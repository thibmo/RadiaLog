unit AudioGeigers;
{
  This is the audio handeling unit file of RadiaLog.
  File GUID: [BA9DDA90-B79E-4199-88B9-87BFFC4B5FF4]

  Contributor(s):
    Thimo Braker (thibmorozier@gmail.com)

  Copyright (C) 2016 Thimo Braker thibmorozier@gmail.com

  This source is free software; you can redistribute it and/or modify it under
  the terms of the GNU General Public License as published by the Free
  Software Foundation; either version 2 of the License, or (at your option)
  any later version.

  This code is distributed in the hope that it will be useful, but WITHOUT ANY
  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
  details.

  A copy of the GNU General Public License is available on the World Wide Web
  at <http://www.gnu.org/copyleft/gpl.html>. You can also obtain it by writing
  to the Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
  MA 02111-1307, USA.
}

interface
uses
  // System units
  Classes, SysUtils, Math,
  // VCL units
  VCL.StdCtrls, VCL.ComCtrls, VCL.ExtCtrls, VCL.Graphics,
  // TeeChart units
  VCLTee.Chart,
  // Cindy units
  cySimpleGauge,
  // OpenAL unit
  OpenAL,
  // Custom units
  NetworkMethods, Defaults {$IFDEF VER290} , ThimoUtils {$ENDIF VER290};

type
  TAudioGeiger = class(TThread)
    private
      fSumCPM:             Integer;
      fNetworkHandler:     TNetworkController;
      fIsSoundInitialized: Boolean;
      fConvertFactor:      Double;
      fConvertmR:          Boolean;
      fUploadRM:           Boolean;
      fCPMBar:             TcySimpleGauge;
      fLblCPM, fLblDosi:   TLabel;
      fCPMChart:           TChart;
      fCPMLog, fErrorLog:  TRichEdit;
      fCaptureDevice:      PALCDevice;
      fTreshold:           Double;
      // Frequency * Channels (Per full second) + Slack-space
      fData:               array[0..GEIGER_BUFFER_SIZE] of SmallInt;
    protected
      procedure Execute; override;
    public
      constructor Create(aThreshold: Double; CreateSuspended: Boolean = False);
      destructor Destroy; override;
      procedure updateCPMBar(aCPM: Integer);
      procedure updatePlot(aCPM: Integer);
      procedure updateDosiLbl(aCPM: Integer);
      property Initialized:   Boolean        read fIsSoundInitialized;
      property ConvertFactor: Double         read fConvertFactor write fConvertFactor;
      property ConvertmR:     Boolean        read fConvertmR     write fConvertmR;
      property UploadRM:      Boolean        read fUploadRM      write fUploadRM;
      property CPMBar:        TcySimpleGauge read fCPMBar        write fCPMBar;
      property LblCPM:        TLabel         read fLblCPM        write fLblCPM;
      property LblDosi:       TLabel         read fLblDosi       write fLblDosi;
      property CPMChart:      TChart         read fCPMChart      write fCPMChart;
      property CPMLog:        TRichEdit      read fCPMLog        write fCPMLog;
      property ErrorLog:      TRichEdit      read fErrorLog      write fErrorLog;
  end;

implementation
constructor TAudioGeiger.Create(aThreshold: Double; CreateSuspended: Boolean = False);
begin
  inherited Create(CreateSuspended);
  fNetworkHandler     := TNetworkController.Create;
  fIsSoundInitialized := InitOpenAL;
  fSumCPM             := 0;
  fTreshold           := aThreshold;
  // Disable 3D spatialization for speed up
  alDistanceModel(AL_NONE);
  Set8087CW($133F);

  if not fIsSoundInitialized then
    raise exception.create('Could not initialize OpenAL!');

  // Prepare audio source
  fCaptureDevice := alcCaptureOpenDevice(nil, // Device name pointer
                                         GEIGER_SAMPLE_RATE, // Frequency
                                         IfThen(GEIGER_CHANNELS = 2, AL_FORMAT_STEREO16, AL_FORMAT_MONO16), // Format
                                         Trunc(Length(fData) Div GEIGER_CHANNELS)); // Buffer size

  if fCaptureDevice = nil then
    raise exception.create('Capture device is nil!');
end;


procedure TAudioGeiger.Execute;
var
  I, J: Integer;
  DateTime: string;
  CurRMS: Extended;
  numSamples: Integer;
begin
  inherited;
  // FreeOnTerminate := True;
  alcCaptureStart(fCaptureDevice);
  
  while not Terminated do
  begin
    fSumCPM := 0;

    for I := 0 to GEIGER_RUN_TIME - 1 do
    begin
      for J := 0 to THREAD_WAIT_TIME - 1 do
      begin
        if Terminated then Exit; // Must check regularly

        Sleep(1);
      end;

      // Get number of frames captuered
      alcGetIntegerv(fCaptureDevice, ALC_CAPTURE_SAMPLES, 1, @numSamples);
      alcCaptureSamples(fCaptureDevice, @fData, numSamples); 
      // Calculate RMS
      CurRMS := 0.0;

      if Terminated then Exit; // Must check regularly
	  
      for J := 0 to (numSamples - 1) do
        CurRMS := CurRMS + Sqr(fData[J]);

      CurRMS := Sqrt(CurRMS / numSamples);

      if Terminated then Exit; // Must check regularly

      if DEBUG_AUDIO then
      begin
        if (CurRMS / THRESHOLD_DIV) >= fTreshold then
        begin
          Inc(fSumCPM);
          fErrorLog.Lines.Add('Tick at I=' + IntToStr(I) + ' with RMS: ' + FloatToStr(CurRMS));
          fErrorLog.Lines.Add('Tick at I=' + IntToStr(I) + ' with  RMS(Clean): ' + FloatToStr(CurRMS / THRESHOLD_DIV));
        end;
      end else
        if (CurRMS / THRESHOLD_DIV) >= fTreshold then
          Inc(fSumCPM);
    end;

    if Terminated then Exit; // Must check regularly

    DateTime := FormatDateTime('DD-MM-YYYY HH:MM:SS', Now);
    fCPMLog.Lines.Add(DateTime);
    fCPMLog.Lines.Add(#9 + 'Current CPM: ' + IntToStr(fSumCPM) + sLineBreak);

    if Terminated then Exit; // Must check regularly

    updatePlot(fSumCPM);
    updateCPMBar(fSumCPM);
    updateDosiLbl(fSumCPM);

    if fUploadRM then
      fNetworkHandler.UploadData(fSumCPM, fErrorLog);

    if Terminated then Exit; // Must check regularly
  end;
end;


destructor TAudioGeiger.Destroy;
begin
  inherited;

  try
    alcCaptureStop(fCaptureDevice);
    alcCaptureCloseDevice(fCaptureDevice);
  finally
    fCaptureDevice := nil;
    AlutExit;
  end;

  FreeAndNil(fNetworkHandler);
end;


procedure TAudioGeiger.updateCPMBar(aCPM: Integer);
begin
  if aCPM < 200 then // Safe
  begin
    fCPMBar.Max               := 200;
    fCPMBar.ItemOnBrush.Color := clLime;
    fCPMBar.ItemOnPen.Color   := clGreen;
  end else
    if aCPM < 500 then // Attention
    begin
      fCPMBar.Max               := 500;
      fCPMBar.ItemOnBrush.Color := clYellow;
      fCPMBar.ItemOnPen.Color   := clOlive;
    end else
      if aCPM < 1000 then // Warning
      begin
        fCPMBar.Max               := 1000;
        fCPMBar.ItemOnBrush.Color := $0000A5FF; // clWebOrange
        fCPMBar.ItemOnPen.Color   := $000045FF; // clWebOrangeRed
      end else // Danger
      begin
        fCPMBar.Max               := 15000;
        fCPMBar.ItemOnBrush.Color := clRed;
        fCPMBar.ItemOnPen.Color   := clMaroon;
      end;

  fCPMBar.Position := aCPM;
  fLblCPM.Caption   := IntToStr(aCPM);
end;


procedure TAudioGeiger.updatePlot(aCPM: Integer);
var
  I: Integer;
  plotData: TChartData;
begin
  plotData.value    := aCPM;
  plotData.dateTime := Now;

  if fPlotPointList.Count - 1 = PLOTCAP then // Make space for new plot point
    fPlotPointList.Delete(0);

  fPlotPointList.Add(plotData);
  fCPMChart.Series[0].Clear;

  for I := 0 to PLOTCAP do
  begin
    if I <= fPlotPointList.Count - 1 then
    begin
      if fPlotPointList[I].value >= fCPMChart.LeftAxis.Maximum then
        fCPMChart.LeftAxis.Maximum := fPlotPointList[I].value + 10;

      fCPMChart.Series[0].Add(fPlotPointList[I].value, FormatDateTime('HH:MM:SS', fPlotPointList[I].dateTime));
    end else
      fCPMChart.Series[0].Add(0, 'Empty');
  end;

  fCPMChart.Update;
end;


procedure TAudioGeiger.updateDosiLbl(aCPM: Integer);
var
  DosiValue: Double;
begin
  DosiValue := aCPM * fConvertFactor;

  if fConvertmR then
    fLblDosi.Caption := FormatFloat(',0.000000', DosiValue / SVTOR) + ' �R/h'
  else
    fLblDosi.Caption := FormatFloat(',0.000000', DosiValue) + ' �Sv/h';
end;

end.
