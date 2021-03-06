unit NetworkMethods;
{
  This is the networking unit file of RadiaLog.
  File GUID: [E75C3601-8EAA-45FB-A3BE-77D8E3650A96]

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
  // Common units
  SysUtils,
  // VCL units
  VCL.ComCtrls,
  // Indy units
  IdHTTP, IdException, IdExceptionCore, IdStack,
  // Custom units
  Defaults;

type
  TNetworkController = class(TObject)
    private
      fLogTxt, fHttpReply: string;
    public
      //procedure UploadData(aCPM: Integer); overload;
      constructor Create;
      destructor Destroy; Override;
      procedure UploadData(aCPM: Integer; aEdit: TRichEdit);
      property LogText: string read fLogTxt;
      property HttpReply: string read fHttpReply;
  end;

implementation
constructor TNetworkController.Create;
begin
  inherited;
end;


destructor TNetworkController.Destroy;
begin
  inherited;
end;


procedure TNetworkController.UploadData(aCPM: Integer; aEdit: TRichEdit);
var
  urlString, DateTime: string;
  HTTPClient: TIdHTTP;
  hadException: Boolean;
begin
  hadException := False;
  DateTime     := FormatDateTime('YYYY-MM-DD%20HH:MM:SS', Now);
  HTTPClient   := TIdHTTP.Create(nil);
  fHttpReply   := '';
  urlString    := 'http://'          + RADMON_HOST    + '/radmon.php' +
                  '?user='           + fUsername      +
                  '&password='       + fPassword      +
                  '&function=submit' +
                  '&datetime='       + DateTime       +
                  '&value='          + IntToStr(aCPM) +
                  '&unit=CPM';

  try
    HTTPClient.ConnectTimeout    := 3000;
    HTTPClient.ReadTimeout       := 2000;
    HTTPClient.Request.UserAgent := 'Mozilla/5.0 (compatible; RadiaLog/' + VERSION + ')';
    aEdit.Lines.Add(#9 + 'Sending data to RadMon...');
    aEdit.Lines.Add(#9 + 'CPM to send: ' + IntToStr(aCPM));

    try
      fHttpReply := HTTPClient.Get(urlString);
    except
      // Indy protocol exception
      on E:EIdHTTPProtocolException do
      begin
        fLogTxt := #9 + 'Error: Indy raised a protocol error!'       + sLineBreak +
                   #9 + 'HTTP status code: ' + IntToStr(E.ErrorCode) + sLineBreak +
                   #9 + 'Error message'      + E.Message             + sLineBreak;
        hadException := True;
      end;
      // Indy server closed connection exception
      on E:EIdConnClosedGracefully do
      begin
        fLogTxt := #9 + 'Error: Indy reports, that connection was closed by the server!' + sLineBreak +
                   #9 + 'Exception class: ' + E.ClassName                                + sLineBreak +
                   #9 + 'Error message: '   + E.Message                                  + sLineBreak;
        hadException := True;
      end;
      // Indy low-level socket exception
      on E:EIdSocketError do
      begin
        fLogTxt := #9 + 'Error: Indy raised a socket error!'    + sLineBreak +
                   #9 + 'Error code: '  + IntToStr(E.LastError) + sLineBreak +
                   #9 + 'Error message' + E.Message             + sLineBreak;
        hadException := True;
      end;
      // Indy read-timeout exception
      on E:EIdReadTimeout do
      begin
        fLogTxt := #9 + 'Error: Indy raised a read-timeout error!' + sLineBreak +
                   #9 + 'Exception class: ' + E.ClassName          + sLineBreak +
                   #9 + 'Error message: '   + E.Message            + sLineBreak;
        hadException := True;
      end;
      // All other Indy exceptions
      on E:EIdException do
      begin
        fLogTxt := #9 + 'Error: Something went wrong with Indy!' + sLineBreak +
                   #9 + 'Exception class: ' + E.ClassName        + sLineBreak +
                   #9 + 'Error message: '   + E.Message          + sLineBreak;
        hadException := True;
      end;
      // All other Delphi exceptions
      on E:Exception do
      begin
        fLogTxt := #9 + 'Error: Something non-Indy related raised an exception!' + sLineBreak +
                   #9 + 'Exception class: ' + E.ClassName                        + sLineBreak +
                   #9 + 'Error message: '   + E.Message                          + sLineBreak;
        hadException := True;
      end;
    end;

    if not hadException then
      if httpReply.ToLower.Contains('incorrect') then
        fLogTxt := #9 + 'Error sending data to RadMon.'     + sLineBreak +
                   #9 + 'Check your username and password.' + sLineBreak
      else
        if httpReply.ToLower.Contains('error') then
          fLogTxt := #9 + 'Error sending data to RadMon.'                                    + sLineBreak +
                     #9 + 'An unknown error occurred.'                                       + sLineBreak +
                     #9 + 'Please make sure your username is correct, it is case-sensitive!' + sLineBreak
        else
        begin
          fLogTxt := #9 + 'Response: ' + StringReplace(fHttpReply, '<br>', '', [rfReplaceAll, rfIgnoreCase]) + sLineBreak;
        end;

    aEdit.Lines.Add(fLogTxt);
  finally
    FreeAndNil(HTTPClient);
  end;
end;

end.
