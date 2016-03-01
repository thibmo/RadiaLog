unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  OpenAL, Math;

const
  SAMPLES_PER_SECOND = 10;
  TIMESPAN_SECONDS = 10;
  THRESHOLD_DIV = 100000;
  GEIGER_RUN_TIME = TIMESPAN_SECONDS * SAMPLES_PER_SECOND;
  GEIGER_SAMPLE_RATE = 22050;
  GEIGER_ALPHA_NUM = 0.4;
  GEIGER_CHANNELS = 2;
  GEIGER_BUFFER_SIZE = (GEIGER_SAMPLE_RATE * GEIGER_CHANNELS) Div SAMPLES_PER_SECOND;

type
  { TForm1 }
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    fSumCPM: Integer;
    fCaptureDevice: PALCDevice;
    fData: array [0..GEIGER_BUFFER_SIZE] of SmallInt;
    procedure Execute;
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  InitOpenAL;
  // Disable 3D spatialization for speed up
  alDistanceModel(AL_NONE);
  // Prepare audio source

  if GEIGER_CHANNELS = 2 then
    fCaptureDevice := alcCaptureOpenDevice(nil,
                                           GEIGER_SAMPLE_RATE, // Only “Ticks”
                                           AL_FORMAT_STEREO16,
                                           Trunc(Length(fData) Div GEIGER_CHANNELS))
  else
    fCaptureDevice := alcCaptureOpenDevice(nil,
                                           GEIGER_SAMPLE_RATE, // Only “Ticks”
                                           AL_FORMAT_MONO16,
                                           Trunc(Length(fData) Div GEIGER_CHANNELS));

  Execute;
end;

procedure TForm1.Execute;
var
  I, J: Integer;
  CurRMS, rmsSmooth, CurDB: Double;
  numSamples: Integer;
begin
  if fCaptureDevice = nil then
    raise exception.create('Capture device is nil!');

  alcCaptureStart(fCaptureDevice);
  for I := 0 to GEIGER_RUN_TIME - 1 do
  begin
    Sleep(100);
    // Get number of frames captured
    alcGetIntegerv(fCaptureDevice, ALC_CAPTURE_SAMPLES, 1, @numSamples);
    alcCaptureSamples(fCaptureDevice, @fData, numSamples);
    // Calculate RMS
    CurRMS := 0.0;

    for J := 0 to (numSamples - 1) do
      CurRMS := CurRMS + Sqr(fData[J]);

    CurRMS := Sqrt(CurRMS / numSamples);

    if (CurRMS / THRESHOLD_DIV) >= 0.0300 then
    begin
      Inc(fSumCPM);
      Memo1.Lines.Add('Tick at I=' + IntToStr(I) + ' with RMS: ' + FloatToStr(CurRMS));
      Memo1.Lines.Add('Tick at I=' + IntToStr(I) + ' with  RMS(Clean): ' + FloatToStr(CurRMS / THRESHOLD_DIV));
      rmsSmooth := 0;
      rmsSmooth := rmsSmooth * GEIGER_ALPHA_NUM + (1 - GEIGER_ALPHA_NUM) * CurRMS;
      CurDB := 20.0 * log10(rmsSmooth / (1 << 15));
      Memo1.Lines.Add('Tick at I=' + IntToStr(I) + ' with: ' + FloatToStr(CurDB) + ' dB');
    end;
  end;

  Memo1.Lines.Add('Cur CPM - ' + IntToStr(fSumCPM));
  alcCaptureStop(fCaptureDevice);
  alcCaptureCloseDevice(fCaptureDevice);
  fCaptureDevice := nil;
  AlutExit;
end;


end.
