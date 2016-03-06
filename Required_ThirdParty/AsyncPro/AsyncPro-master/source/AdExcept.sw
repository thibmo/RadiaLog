(***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is TurboPower Async Professional
 *
 * The Initial Developer of the Original Code is
 * TurboPower Software
 *
 * Portions created by the Initial Developer are Copyright (C) 1991-2002
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * ***** END LICENSE BLOCK ***** *)

{*********************************************************}
{*                   ADEXCEPT.INC 4.04                   *}
{*        String resources for errors and status         *}
{*********************************************************}

(*
  All string resources have been moved into this resourcestring file in
  APRO 4.03.  The APRO String Resource Manager is still available, but
  not used by default.  Disable the {$DEFINE UseResourceStrings} define
  in AwDefine.inc to revert back to the string resource manager if desired.
  AdExcept.inc contains English strings
  AdExcept.fra contains French strings
  AdExcept.deu contains German strings
  AdExcept.esp contains Spanish strings
  AdExcept.sw contains Swedish strings
  AdExcept.nor constains Norwegian strings
  AdExcept.dk contains Danish strings

  Where a translation was not available, the English version was used.
  If you have a translation for the strings, please send them to us
  through the mailsupport@turbopower.com email address, or through
  the turbopower.public.third-party.internationalization newsgroup.
  We will include the translation in the next release of APRO. Thanks.
*)

resourcestring
{ Numbers in the comments correspond to the ErrorCode passed in many of our }
{ events.  Strings without the numbers do not have corresponding ErrorCodes }
  {No error}
  secOK                             {   0} = 'OK';

  {egDOS}
  secFileNotFound                   {   2} = 'File not found';
  secPathNotFound                   {   3} = 'Path not found';
  secTooManyFiles                   {   4} = 'Too many open files';
  secAccessDenied                   {   5} = 'File access denied';
  secInvalidHandle                  {   6} = 'Invalid file handle';
  secOutOfMemory                    {   8} = 'Insufficient memory';
  secInvalidDrive                   {  15} = 'Invalid drive';
  secNoMoreFiles                    {  18} = 'No more files';
  secDiskRead                       { 100} = 'Attempt to read beyond end of file';
  secDiskFull                       { 101} = 'Disk is full';
  secNotAssigned                    { 102} = 'File/device not assigned';
  secNotOpen                        { 103} = 'File/device not open';
  secNotOpenInput                   { 104} = 'File/device not open for input';
  secNotOpenOutput                  { 105} = 'File/device not open for output';
  secWriteProtected                 { 150} = 'Disk is write-protected';
  secUnknownUnit                    { 151} = 'Unknown disk unit';
  secDriveNotReady                  { 152} = 'Drive is not ready';
  secUnknownCommand                 { 153} = 'Unknown command';
  secCrcError                       { 154} = 'Data error';
  secBadStructLen                   { 155} = 'Bad request structure length';
  secSeekError                      { 156} = 'Seek error';
  secUnknownMedia                   { 157} = 'Unknown media type';
  secSectorNotFound                 { 158} = 'Disk sector not found';
  secOutOfPaper                     { 159} = 'Printer is out of paper';
  secDeviceWrite                    { 160} = 'Device write error';
  secDeviceRead                     { 161} = 'Device read error';
  secHardwareFailure                { 162} = 'General failure';

  {egGeneral}
  secBadHandle                      {1001} = 'Bad handle passed to com function';
  secBadArgument                    {1002} = 'Bad argument passed to function';
  secGotQuitMsg                     {1003} = 'Got quit message';
  secBufferTooBig                   {1004} = 'Terminal buffer greater than 65521';
  secPortNotAssigned                {1005} = 'ComPort component not assigned';
  secInternal                       {1006} = 'Internal error creating window class';
  secModemNotAssigned               {1007} = 'Modem component not assigned';
  secPhonebookNotAssigned           {1008} = 'Phonebook component not assigned';
  secCannotUseWithWinSock           {1009} = 'Component not compatible with WinSock';

  {egOpenComm}
  secBadId                          {2001} = 'ie_BadId - Specified comport doesn''t exist';
  secBaudRate                       {2002} = 'ie_Baudrate - unsupported baud rate';
  secByteSize                       {2003} = 'ie_Bytesize - invalid byte size';
  secDefault                        {2004} = 'ie_Default - error in default parameters';
  secHardware                       {2005} = 'ie_Hardware - Specified comport in use';
  secMemory                         {2006} = 'ie_Memory - unable to allocate queues';
  secCommNotOpen                    {2007} = 'ie_NOpen - device not open';
  secAlreadyOpen                    {2008} = 'ie_Open - device already open';
  secNoHandles                      {2009} = 'No more handles, can''t open port';
  secNoTimers                       {2010} = 'No timers available';
  secNoPortSelected                 {2011} = 'The ComNumber property of the TApdComPort has not been set';
  secNotOpenedByTapi                {2012} = 'Comport was not opened by Tapi';

  {egSerialIO}
  secNullApi                        {3001} = 'No device layer specified';
  secNotSupported                   {3002} = 'Function not supported by driver';
  secRegisterHandlerFailed          {3003} = 'EnableCommNotification failed';
  secPutBlockFail                   {3004} = 'Failed to put entire block';
  secGetBlockFail                   {3005} = 'Failed to get entire block';
  secOutputBufferTooSmall           {3006} = 'Output buffer too small for block';
  secBufferIsEmpty                  {3007} = 'Buffer is empty';
  secTracingNotEnabled              {3008} = 'Tracing not enabled';
  secLoggingNotEnabled              {3009} = 'Logging not enabled';
  secBaseAddressNotSet              {3010} = 'Base address not set';

  {Modem/Pager}
  secModemNotStarted                {4001} = 'StartModem has not been called';
  secModemBusy                      {4002} = 'Modem is busy elsewhere';
  secModemNotDialing                {4003} = 'Modem is not currently dialing';
  secNotDialing                     {4004} = 'Dialer is not dialing';
  secAlreadyDialing                 {4005} = 'Dialer is already dialing';
  secModemNotResponding             {4006} = 'Modem is not responding';
  secModemRejectedCommand           {4007} = 'Invalid command sent to modem';
  secModemStatusMismatch            {4008} = 'Wrong modem status requested';

  secDeviceNotSelected              {4009} = 'Device not selected';
  secModemDetectedBusy              {4010} = 'Called number is busy';
  secModemNoDialtone                {4011} = 'No dialtone';
  secModemNoCarrier                 {4012} = 'No carrier';
  secModemNoAnswer                  {4013} = 'No answer';

  { Pager }                                                            
  secInitFail                       {4014} = 'Modem Initialization Failure';
  secLoginFail                      {4015} = 'Failed to Login';
  secMinorSrvErr                    {4016} = 'Minor Server Error';
  secFatalSrvErr                    {4017} = 'Fatal Server Error';

  {LibModem}
  secModemNotFound                  {4020} = 'Modem not found';
  secInvalidFile                    {4021} = 'Invalid modemcap file';

  {deprecated, duplicate values different names}
  {TApdPhoneBookEditor}
  spbeDeleteQuery                   {4101} = 'Are you sure you want to delete this entry?';
  {TApdSModem}
  sdsmMsgBase                       {4200} = '';
  sdsmMsgReady                      {4201} = 'Ready';
  sdsmMsgInitialize                 {4202} = 'Initializing modem';
  sdsmMsgInitializeTimeout          {4203} = 'Initialize timed out';
  sdsmMsgAutoAnswerBackground       {4204} = 'AutoAnswer in background';
  sdsmMsgAutoAnswerWait             {4205} = 'Waiting for incoming call';
  sdsmMsgAnswerWait                 {4206} = 'Answering call';
  sdsmMsgDialWait                   {4207} = 'Dialing';
  sdsmMsgDialCycle                  {4208} = 'Pausing until redial';
  sdsmMsgNoDialtone                 {4209} = 'No dialtone';
  sdsmMsgConnectWait                {4210} = 'Connected waiting';
  sdsmMsgConnected                  {4211} = 'Connected';
  sdsmMsgHangup                     {4212} = 'Disconnecting';
  sdsmMsgCancel                     {4213} = 'Canceling';
  {TApdDialerDialog}
  sdddCycling                       {4301} = 'Cycling dial attempt . . .';
  sdddRetryWaiting                  {4302} = 'Waiting . . .';
  sdddRetryWaitOver                 {4303} = 'Wait complete, redialing . . .';
  sdddDialing                       {4304} = 'Dialing . . .';
  sdddModemConnect                  {4305} = 'Modem connected!';
  sdddModemConnectAt                {4306} = 'Connected at %d baud';
  sdddModemVoice                    {4307} = 'Connection Result: Remote answered with voice';
  sdddModemError                    {4308} = 'Connection Result: Modem return an error';
  sdddModemNoCarrier                {4309} = 'Connection Result: No carrier, connection failed';
  sdddModemBusy                     {4310} = 'Connection Result: Remote is busy';
  sdddModemNoDialTone               {4311} = 'Connection Result: No dialtone, check connections';
  sdddDialTimedOut                  {4312} = 'Dial attempt timed out';
  {TPhoneBookEntryForm}
  sdpeMustEnterName                 {4401} = 'You must enter an entry name';
  sdpeMustEnterNumber               {4402} = 'You must enter a phone number';
  sdpeNameExists                    {4403} = 'A phonebook entry with that name already exists';

  {RAS connection status codes}
  scsOpenPort                       {4500} = 'OpenPort';
  scsPortOpened                     {4501} = 'PortOpened';
  scsConnectDevice                  {4502} = 'ConnectDevice';
  scsDeviceConnected                {4503} = 'DeviceConnected';
  scsAllDevicesConnected            {4504} = 'AllDevicesConnected';
  scsAuthenticate                   {4505} = 'Authenticate';
  scsAuthNotify                     {4506} = 'AuthNotify';
  scsAuthRetry                      {4507} = 'AuthRetry';
  scsAuthCallback                   {4508} = 'AuthCallback';
  scsAuthChangePassword             {4509} = 'AuthChangePassword';
  scsAuthProject                    {4510} = 'AuthProject';
  scsAuthLinkSpeed                  {4511} = 'AuthLinkSpeed';
  scsAuthAck                        {4512} = 'AuthAck';
  scsReAuthenticate                 {4513} = 'ReAuthenticate';
  scsAuthenticated                  {4514} = 'Authenticated';
  scsPrepareForCallback             {4515} = 'PrepareForCallback';
  scsWaitForModemReset              {4516} = 'WaitForModemReset';
  scsWaitForCallback                {4517} = 'WaitForCallback';
  scsProjected                      {4518} = 'Projected';
  scsStartAuthentication            {4519} = 'StartAuthentication';
  scsCallbackComplete               {4520} = 'CallbackComplete';
  scsLogonNetwork                   {4521} = 'LogonNetwork';
  scsSubEntryConnected              {4522} = 'SubEntryConnected';
  scsSubEntryDisconnected           {4523} = 'SubEntryDisconnected';
  scsRasInteractive                 {4550} = 'Interactive';
  scsRasRetryAuthentication         {4551} = 'RetryAuthentication';
  scsRasCallbackSetByCaller         {4552} = 'CallbackSetByCaller';
  scsRasPasswordExpired             {4553} = 'PasswordExpired';
  scsRasDeviceConnected             {4599} = 'DeviceConnected';

  { Pager TDialingStatus }
  sPDS_NONE                         {4600} = '';
  sPDS_OFFHOOK                      {4601} = 'Off Hook';
  sPDS_DIALING                      {4602} = 'Dialing';
  sPDS_RINGING                      {4603} = 'Ringing';
  sPDS_WAITFORCONNECT               {4604} = 'Wait For Connect';
  sPDS_CONNECTED                    {4605} = 'Connected';
  sPDS_WAITINGTOREDIAL              {4606} = 'Waiting To Redial';
  sPDS_REDIALING                    {4607} = 'Redialing';
  sPDS_MSGNOTSENT                   {4608} = 'Message Not Sent';
  sPDS_CANCELLING                   {4609} = 'Cancelling';
  sPDS_DISCONNECT                   {4610} = 'Disconnect';
  sPDS_CLEANUP                      {4611} = 'Cleanup';

  { PDialingError }
  sPDE_NONE                         {4630} = '';
  sPDE_NODIALTONE                   {4631} = 'No Dial Tone';
  sPDE_LINEBUSY                     {4632} = 'Busy';
  sPDE_NOCONNECTION                 {4633} = 'No Connection';

  { TTapStatus }
  sTAPS_NONE                        {4660} = '';
  sTAPS_LOGINPROMPT                 {4661} = 'Login Prompt';
  sTAPS_LOGGEDIN                    {4662} = 'Logged In';
  sTAPS_LOGINERR                    {4663} = 'Login Error';
  sTAPS_LOGINFAIL                   {4664} = 'Login Fail';
  sTAPS_MSGOKTOSEND                 {4665} = 'Message Ok To Send';
  sTAPS_SENDINGMSG                  {4666} = 'Sending Message';
  sTAPS_MSGACK                      {4667} = 'Message Acknowledged';
  sTAPS_MSGNAK                      {4668} = 'Message Not Acknowledged';
  sTAPS_MSGRS                       {4669} = 'Message Error';
  sTAPS_MSGCOMPLETED                {4670} = 'Message Completed';
  sTAPS_DONE                        {4671} = 'Done';

  { Protocol status }
  spsOK                             {4700} = 'OK';
  spsProtocolHandshake              {4701} = 'Protocol handshaking in progress';
  spsInvalidDate                    {4702} = 'Bad date/time stamp received and ignored';
  spsFileRejected                   {4703} = 'File rejected';
  spsFileRenamed                    {4704} = 'File renamed';
  spsSkipFile                       {4705} = 'File skipped';
  spsFileDoesntExist                {4706} = 'File doesn''t exist locally, skipped';
  spsCantWriteFile                  {4707} = 'File skipped ';
  spsTimeout                        {4708} = 'Time out in protocol';
  spsBlockCheckError                {4709} = 'Bad checksum or CRC';
  spsLongPacket                     {4710} = 'Block too long';
  spsDuplicateBlock                 {4711} = 'Duplicate block received and ignored ';
  spsProtocolError                  {4712} = 'Error in protocol';
  spsCancelRequested                {4713} = 'Cancel requested';
  spsEndFile                        {4714} = 'At end of file';
  spsResumeBad                      {4715} = 'B+ host refused resume request';
  spsSequenceError                  {4716} = 'Block was out of sequence';
  spsAbortNoCarrier                 {4717} = 'Aborting on carrier loss';

  {Specific to certain protocols}
  spsGotCrcE                        {4718} = 'Got CrcE packet (Zmodem)';
  spsGotCrcG                        {4719} = 'Got CrcG packet (Zmodem)';
  spsGotCrcW                        {4720} = 'Got CrcW packet (Zmodem)';
  spsGotCrcQ                        {4721} = 'Got CrcQ packet (Zmodem)';
  spsTryResume                      {4722} = 'B+ is trying to resume a download';
  spsHostResume                     {4723} = 'B+ host is resuming';
  spsWaitAck                        {4724} = 'Waiting for B+ ACK';

  {Internal protocol codes}
  spsNoHeader                       {4725} = '';
  spsGotHeader                      {4726} = '';
  spsGotData                        {4727} = '';
  spsNoData                         {4728} = '';
  spsAbort                          {4730} = '';

  {Fax progress codes, sending}
  sfpInitModem                      {4801} = 'Initializing modem for fax processing';
  sfpDialing                        {4802} = 'Dialing';
  sfpBusyWait                       {4803} = 'Busy, waiting until redial...';
  sfpSendPage                       {4804} = 'Sending page data';
  sfpSendPageStatus                 {4805} = 'Sending EOP';
  sfpPageError                      {4806} = 'Error sending page';
  sfpPageOK                         {4807} = 'Page accepted by remote';
  sfpConnecting                     {4808} = 'Connecting...';

  {Fax progress codes, receiving}
  sfpWaiting                        {4820} = 'Waiting for incoming call';
  sfpNoConnect                      {4821} = 'No connect on this call';
  sfpAnswer                         {4822} = 'Answering incoming call';
  sfpIncoming                       {4823} = 'Incoming call validated as fax';
  sfpGetPage                        {4824} = 'Getting page data';
  sfpGetPageResult                  {4825} = 'Getting end-of-page signal';
  sfpCheckMorePages                 {4826} = 'Getting end-of-document status';
  sfpGetHangup                      {4827} = 'Getting hangup command';
  sfpGotHangup                      {4828} = 'Got Class 2 FHNG code';

  {Fax server codes }
  sfpSwitchModes                    {4830} = 'Switching modes';
  sfpMonitorEnabled                 {4831} = 'Monitoring for incoming faxes';
  sfpMonitorDisabled                {4832} = 'Not monitoring for incoming faxes';

  {Fax progress codes, common}
  sfpSessionParams                  {4840} = 'Getting connection params';
  sfpGotRemoteID                    {4841} = 'Got called-station ID';
  sfpCancel                         {4842} = 'User abort';
  sfpFinished                       {4843} = 'Finished';

  {Trigger errors}
  secNoMoreTriggers                 {5001} = 'No more trigger slots';
  secTriggerTooLong                 {5002} = 'Data trigger too long';
  secBadTriggerHandle               {5003} = 'Bad trigger handle';

  {Packet errors}
  secStartStringEmpty               {5501} = 'Start string is empty';
  secPacketTooSmall                 {5502} = 'Packet size cannot be smaller than start string';
  secNoEndCharCount                 {5503} = 'CharCount packets must have an end-condition';
  secEmptyEndString                 {5504} = 'End string is empty';
  secZeroSizePacket                 {5505} = 'Packet size cannot be zero';
  secPacketTooLong                  {5506} = 'Packet too long';

  {Protocol errors}
  secBadFileList                    {6001} = 'Bad format in file list';
  secNoSearchMask                   {6002} = 'No search mask specified during transmit';
  secNoMatchingFiles                {6003} = 'No files matched search mask';
  secDirNotFound                    {6004} = 'Directory in search mask doesn''t exist';
  secCancelRequested                {6005} = 'Cancel requested';
  secTimeout                        {6006} = 'Fatal time out';
  secProtocolError                  {6007} = 'Unrecoverable event during protocol';
  secTooManyErrors                  {6008} = 'Too many errors during protocol';
  secSequenceError                  {6009} = 'Block sequence error in Xmodem';
  secNoFilename                     {6010} = 'No filename specified in protocol receive';
  secFileRejected                   {6011} = 'File was rejected';
  secCantWriteFile                  {6012} = 'Cant write file';
  secTableFull                      {6013} = 'Kermit window table is full, fatal error';
  secAbortNoCarrier                 {6014} = 'Aborting due to carrier loss';
  secBadProtocolFunction            {6015} = 'Function not supported by protocol';
  secProtocolAbort                  {6016} = 'Protocol aborted';

  {INI database}
  secKeyTooLong                     {7001} = 'Key string too long';
  secDataTooLarge                   {7002} = 'Data string too long';
  secNoFieldsDefined                {7003} = 'No fields defined in database';
  secIniWrite                       {7004} = 'Generic INI file write error';
  secIniRead                        {7005} = 'Generic INI file read error';
  secNoIndexKey                     {7006} = 'No index defined for database';
  secRecordExists                   {7007} = 'Record already exists';
  secRecordNotFound                 {7008} = 'Record not found in database';
  secMustHaveIdxVal                 {7009} = 'Invalid index key name';
  secDatabaseFull                   {7010} = 'Maximum database records (999) reached';
  secDatabaseEmpty                  {7011} = 'No records in database';
  secDatabaseNotPrepared            {7012} = 'iPrepareIniDatabase not called';
  secBadFieldList                   {7013} = 'Bad field list in INI component';
  secBadFieldForIndex               {7014} = 'Bad field index in INI component';

  {State Machine}
  secNoStateMachine                 {7500} = 'No state machine specified'; {!!.04}
  secNoStartState                   {7501} = 'StartState not set';       {!!.04}
  secNoSapiEngine                   {7502} = 'No SAPI engine specified'; {!!.04}

  { fax codes }
  secFaxBadFormat                   {8001} = 'File is not an APF file';
  secBadGraphicsFormat              {8002} = 'Unsupported graphics file format';
  secConvertAbort                   {8003} = 'User aborted fax conversion';
  secUnpackAbort                    {8004} = 'User aborted fax unpack';
  secCantMakeBitmap                 {8005} = 'CreateBitmapIndirect API failure';
  secNoImageLoaded                  {8050} = 'No image loaded into viewer';
  secNoImageBlockMarked             {8051} = 'No block of image marked';
  secFontFileNotFound               {8052} = 'APFAX.FNT not found, or resource bad';
  secInvalidPageNumber              {8053} = 'Invalid page number specified for fax';
  secBmpTooBig                      {8054} = 'BMP size exceeds Windows'' maxheight of 32767';
  secEnhFontTooBig                  {8055} = 'Font selected for enhanced text converter too large';

  secFaxBadMachine                  {8060} = 'Fax incompatible with remote fax';
  secFaxBadModemResult              {8061} = 'Bad response from modem';
  secFaxTrainError                  {8062} = 'Modems failed to train';
  secFaxInitError                   {8063} = 'Error while initializing modem';
  secFaxBusy                        {8064} = 'Called fax number was busy';
  secFaxVoiceCall                   {8065} = 'Called fax number answered with voice';
  secFaxDataCall                    {8066} = 'Incoming data call';
  secFaxNoDialTone                  {8067} = 'No dial tone';
  secFaxNoCarrier                   {8068} = 'Failed to connect to remote fax';
  secFaxSessionError                {8069} = 'Fax failed in mid-session';
  secFaxPageError                   {8070} = 'Fax failed at page end';
  secFaxGDIPrintError               {8071} = 'NextBand GDI error in fax print driver';
  secFaxMixedResolution             {8072} = 'Multiple resolutions per session not supported';
  secFaxConverterInitFail           {8073} = 'Initialization of fax converter failed';
  secNoAnswer                       {8074} = 'Remote fax did not answer';
  secAlreadyMonitored               {8075} = 'Directory already being monitored';

  { Printer driver installation codes }
  secUniAlreadyInstalled            {8080} = 'Unidrv support files already installed';
  secUniCannotGetSysDir             {8081} = 'Cannot determine windows system dir';
  secUniCannotGetWinDir             {8082} = 'Cannot determine windows dir';
  secUniUnknownLayout               {8083} = 'Cannot determine setup file layout';
  secUniCannotInstallFile           {8085} = 'Cannot install Unidrv files to system dir';
  secDrvCopyError                   {8087} = 'Error copying printer driver';
  secCannotAddPrinter               {8088} = '32-bit AddPrinter call failed';
  secDrvBadResources                {8089} = 'Bad/missing resources in driver';
  secDrvDriverNotFound              {8090} = 'Driver file not found';
  secUniCannotGetPrinterDriverDir   {8091} = 'Cannot determine Win NT printer driver dir';
  secInstallDriverFailed            {8092} = 'AddPrinterDriver API failed';

  { TApdGSMPhone error codes }
  secSMSBusy                        {8100} = 'Busy with another command';
  secSMSTimedOut                    {8101} = 'Timed out, no response back';
  secSMSTooLong                     {8102} = 'SMS message too long';
  secSMSUnknownStatus               {8103} = 'Status unknown';
  secMEFailure                      {8300} = 'Mobile equipment failure';
  secServiceRes                     {8301} = 'SMS service of ME reserved';
  secBadOperation                   {8302} = 'Operation not allowed';
  secUnsupported                    {8303} = 'Operation not supported';
  secInvalidPDU                     {8304} = 'Invalid PDU mode parameter';
  secInvalidText                    {8305} = 'Invalid Text mode parameter';
  secSIMInsert                      {8310} = 'SIM card not inserted';
  secSIMPin                         {8311} = 'SIM PIN required';
  secSIMPH                          {8312} = 'PH-SIM PIN required';
  secSIMFailure                     {8313} = 'SIM failure';
  secSIMBusy                        {8314} = 'SIM busy';
  secSIMWrong                       {8315} = 'SIM wrong';
  secSIMPUK                         {8316} = 'SIM PUK required';
  secSIMPIN2                        {8317} = 'SIM PIN2 required';
  secSIMPUK2                        {8318} = 'SIM PUK2 required';
  secMemFail                        {8320} = 'Memory failure';
  secInvalidMemIndex                {8321} = 'Invalid memory index';
  secMemFull                        {8322} = 'Memory is full';
  secSMSCAddUnknown                 {8330} = 'SMS Center Address unknown';
  secNoNetwork                      {8331} = 'No network service';
  secNetworkTimeout                 {8332} = 'Network timeout';
  secCNMAAck                        {8340} = 'No +CNMA acknowledgement expected';
  secUnknown                        {8500} = 'Unknown error';

  { Winsock codes }
  secADWSERROR                      {9001} = 'Async Professional Error';
  secADWSLOADERROR                  {9002} = 'Error loading Winsock DLL';
  secADWSVERSIONERROR               {9003} = 'Incorrect version of Winsock';
  secADWSNOTINIT                    {9004} = 'Winsock not initialized - %s';
  secADWSINVPORT                    {9005} = 'Specified port is not valid';
  secADWSCANTCHANGE                 {9006} = 'Cannot change parameter while socket is connected';
  secADWSCANTRESOLVE                {9007} = 'Cannot resolve destination address';

  { All Windows Sockets error constants are biased by 10000 from the "normal" }
  swsaBaseErr                       {10000} = '';
  { Windows Sockets definitions of regular Microsoft C error constants }
  swsaEIntr                         {10004} = 'Interrupted function call';
  swsaEBadF                         {10009} = 'Bad file number';
  swsaEAcces                        {10013} = 'Permission denied';
  swsaEFault                        {10014} = 'Unknown error';
  swsaEInVal                        {10022} = 'Invalid argument';
  swsaEMFile                        {10024} = 'Too many open files';

  { Windows Sockets definitions of regular Berkeley error constants }
  swsaEWouldBlock                   {10035} = 'Warning : the socket would block on this call';
  swsaEInProgress                   {10036} = 'A blocking call is in progress';
  swsaEAlReady                      {10037} = 'WSAEALREADY: watch out, Al is ready';
  swsaENotSock                      {10038} = 'Socket descriptor is (1) not a socket, or (2) is of wrong type';
  swsaEDestAddrReq                  {10039} = 'The destination address is required for this operation';
  swsaEMsgSize                      {10040} = 'The datagram was too large to fit into the buffer and was truncated';
  swsaEPrototype                    {10041} = 'WSAEPROTOTYPE';
  swsaENoProtoOpt                   {10042} = 'The option is unknown or not supported';
  swsaEProtoNoSupport               {10043} = 'Either (1) not enough buffer space to create socket (2) protocol not supported';
  swsaESocktNoSupport               {10044} = 'Specified socket type not supported in this address family';
  swsaEOpNotSupp                    {10045} = 'Operation is not supported by this socket';
  swsaEPfNoSupport                  {10046} = 'Specified protocol family is not supported';
  swsaEAfNoSupport                  {10047} = 'Specified address family is not supported by this protocol';
  swsaEAddrInUse                    {10048} = 'The address is already in use for this operation';
  swsaEAddrNotAvail                 {10049} = 'The address is not available from this machine';
  swsaENetDown                      {10050} = 'The network subsystem has failed';
  swsaENetUnreach                   {10051} = 'The network is unreachable from this machine at this time';
  swsaENetReset                     {10052} = 'The network has been reset';
  swsaEConnAborted                  {10053} = 'The virtual circuit has been aborted due to timeout, etc';
  swsaEConnReset                    {10054} = 'The virtual circuit has been reset by the partner';
  swsaENoBufs                       {10055} = 'The descriptor is not a socket, or no buffer space is available';
  swsaEIsConn                       {10056} = 'The socket is already connected';
  swsaENotConn                      {10057} = 'The socket is not connected';
  swsaEShutDown                     {10058} = 'The socket has been shutdown';
  swsaETooManyRefs                  {10059} = 'WSAETOOMANYREFS';
  swsaETimedOut                     {10060} = 'The operation timed out';
  swsaEConnRefused                  {10061} = 'The attempt to connect was forcibly refused';
  swsaELoop                         {10062} = 'WSAELOOP: see WSAELOOP';
  swsaENameTooLong                  {10063} = 'The name is too long';
  swsaEHostDown                     {10064} = 'The host machine is down';
  swsaEHostUnreach                  {10065} = 'The host machine is unreachable';
  swsaENotEmpty                     {10066} = 'WSAENOTEMPTY';
  swsaEProcLim                      {10067} = 'WSAEPROCLIM';
  swsaEUsers                        {10068} = 'WSAEUSERS';
  swsaEDQuot                        {10069} = 'WSAEDQUOT';
  swsaEStale                        {10070} = 'WSAESTALE';
  swsaERemote                       {10071} = 'WSAEREMOTE';

  { Extended Windows Sockets error constant definitions }
  swsaSysNotReady                   {10091} = 'Network subsystem unusable';
  swsaVerNotSupported               {10092} = 'Version requested by WSAStartUp not supported by loaded Winsock DLL';
  swsaNotInitialised                {10093} = 'WSAStartUp not yet called';
  swsaEDiscOn                       {10101} = 'WSAEDISCON';
  swsaHost_Not_Found                {11001} = 'Host not found';
  swsaTry_Again                     {11002} = 'Host not found, or SERVERFAIL, can try again';
  swsaNo_Recovery                   {11003} = 'Non recoverable errors, FORMERR, REFUSED, NOTIMP';
  swsaNo_Data                       {11004} = 'Valid name, but no data record of requested type';

  { The string resource range 13500 - 13800 is used for TAPI }
  { status messages, which do not require constants here     }
  {TAPI CallState}
  stcs_Idle                         {13501} = 'Line is idle';
  stcs_Offering                     {13502} = 'Offering line...';
  stcs_Accepted                     {13503} = 'Accepting call...';
  stcs_Dialtone                     {13504} = 'Dialtone detected';
  stcs_Dialing                      {13505} = 'Dialing...';
  stcs_Ringback                     {13506} = 'Ringback detected';
  stcs_Busy                         {13507} = 'Called number is busy';
  stcs_SpecialInfo                  {13508} = 'Special info';
  stcs_Connected                    {13509} = 'Connected!';
  stcs_Proceeding                   {13510} = 'Proceeding...';
  stcs_OnHold                       {13511} = 'On hold...';
  stcs_Conferenced                  {13512} = 'Call conferenced';
  stcs_OnHoldPendConf               {13513} = 'On hold pending conference...';
  stcs_OnHoldPendTransfer           {13514} = 'On hold pending transfer...';
  stcs_Disconnected                 {13515} = 'Call disconnected (%s)';
  stcs_Unknown                      {13516} = 'Unknown state';
  {TAPI DevState}
  stds_Other                        {13533} = 'Other';
  stds_Ringing                      {13534} = 'Ringing';
  stds_Connected                    {13535} = 'Connected';
  stds_Disconnected                 {13536} = 'Disconnected';
  stds_MsgWaitOn                    {13537} = 'Message wait on';
  stds_MsgWaitOff                   {13538} = 'Message wait off';
  stds_InService                    {13539} = 'In service';
  stds_OutOfService                 {13540} = 'Out of service';
  stds_Maintenance                  {13541} = 'Maintenance change';
  stds_Open                         {13542} = 'Ppen change';
  stds_Close                        {13543} = 'Closed';
  stds_NumCalls                     {13544} = 'Number of calls changed';
  stds_NumCompletions               {13545} = 'Number of completions changed';
  stds_Terminals                    {13546} = 'Terminals changed';
  stds_RoamMode                     {13547} = 'Roam mode changed';
  stds_Battery                      {13548} = 'Battery changed';
  stds_Signal                       {13549} = 'Signal changed';
  stds_DevSpecific                  {13550} = 'Device specific change';
  stds_ReInit                       {13551} = 'Re-initialized';
  stds_Lock                         {13552} = 'Lock change';
  stds_CapsChange                   {13553} = 'Caps change';
  stds_ConfigChange                 {13554} = 'Configuration change';
  stds_TranslateChange              {13555} = 'Translate change';
  stds_ComplCancel                  {13556} = 'Compltion cancel';
  stds_Removed                      {13557} = 'Removed';

  { TAPI APRO-specific }
  sTAPILineReply                    {13565} = 'TAPI line reply';
  sTAPIStateChange                  {13597} = 'TAPI state change';
  sTAPICalledBusy                   {13598} = 'Called number is busy';
  sTAPIDialFail                     {13599} = 'Dial failed/no connection';
  sTAPIRetryWait                    {13600} = 'Waiting for retry in %d seconds';
  sTAPIDeviceInUse                  {13601} = 'Device is in use by another application';

  { TAPI Disconnect Reasons }
  sTAPIDisconnect_Unspecified       {13650} = 'Reason Unspecified';
  sTAPIDisconnect_Normal            {13651} = 'Normal Hangup by Remote';
  sTAPIDisconnect_Unknown           {13652} = 'Reason Unknown';
  sTAPIDisconnect_Reject            {13653} = 'Remote Rejected Call';
  sTAPIDisconnect_PickUp            {13654} = 'Call Picked Up Elsewhere';
  sTAPIDisconnect_Forwarded         {13655} = 'Call was Forwarded';
  sTAPIDisconnect_Busy              {13656} = 'Line was Busy';
  sTAPIDisconnect_NoAnswer          {13657} = 'No Answer by Remote';
  sTAPIDisconnect_BadAddress        {13658} = 'Invalid Destination Address';
  sTAPIDisconnect_Unreachable       {13659} = 'Remote Unreachable';
  sTAPIDisconnect_Congestion        {13660} = 'Network Congestion';
  sTAPIDisconnect_Incompatible      {13661} = 'Remote Equipment Incompatible';
  sTAPIDisconnect_Unavail           {13662} = 'Reason Unavailable';
  sTAPIDisconnect_NoDialtone        {13663} = 'No Dialtone';
  sTAPIDisconnect_NumberChanged     {13664} = 'Number Changed';
  sTAPIDisconnect_OutOfOrder        {13665} = 'Out of Order';
  sTAPIDisconnect_TempFailure       {13666} = 'Temporary Failure';
  sTAPIDisconnect_QOSUnavail        {13667} = 'Quality of Service Unavail';
  sTAPIDisconnect_Blocked           {13668} = 'Blocked';
  sTAPIDisconnect_DoNotDisturb      {13669} = 'Do Not Disturb';
  sTAPIDisconnect_Cancelled         {13670} = 'Cancelled';

  {Adjusted TAPI error codes}
  secAllocated                      {13801} = 'Already allocated';
  secBadDeviceID                    {13802} = 'Bad device ID';
  secBearerModeUnavail              {13803} = 'Bearer mode unavailable';
  secCallUnavail                    {13805} = 'Call unavailable';
  secCompletionOverrun              {13806} = 'Completion overrun';
  secConferenceFull                 {13807} = 'Conference full';
  secDialBilling                    {13808} = 'Dial failed';
  secDialDialtone                   {13809} = 'Dial failed, no dialtone';
  secDialPrompt                     {13810} = 'Dial failed';
  secDialQuiet                      {13811} = 'Dial failed';
  secIncompatibleApiVersion         {13812} = 'Incompatible API version';
  secIncompatibleExtVersion         {13813} = 'Incompatible EXT version';
  secIniFileCorrupt                 {13814} = 'INI file corrupt';
  secInUse                          {13815} = 'Resource in use';
  secInvalAddress                   {13816} = 'Invalid address';
  secInvalAddressID                 {13817} = 'Invalid address ID';
  secInvalAddressMode               {13818} = 'Invalid address mode';
  secInvalAddressState              {13819} = 'Invalid address state';
  secInvalAppHandle                 {13820} = 'Invalid application handle';
  secInvalAppName                   {13821} = 'Invalid Application name';
  secInvalBearerMode                {13822} = 'Invalid bearer mode';
  secInvalCallComplMode             {13823} = 'Invalid call completion mode';
  secInvalCallHandle                {13824} = 'Invalid call handle';
  secInvalCallParams                {13825} = 'Invalid call parameters';
  secInvalCallPrivilege             {13826} = 'Invalid call privilege';
  secInvalCallSelect                {13827} = 'Invalid call select';
  secInvalCallState                 {13828} = 'Invalid call state';
  secInvalCallStatelist             {13829} = 'Invalid call state list';
  secInvalCard                      {13830} = 'Invalid card';
  secInvalCompletionID              {13831} = 'Invalid completion ID';
  secInvalConfCallHandle            {13832} = 'Invalid conference call handle';
  secInvalConsultCallHandle         {13833} = 'Invalid consultation call handle';
  secInvalCountryCode               {13834} = 'Invalid country code';
  secInvalDeviceClass               {13835} = 'Invalid device class';
  secInvalDeviceHandle              {13836} = 'Invalid device handle';
  secInvalDialParams                {13837} = 'Invalid dial params';
  secInvalDigitList                 {13838} = 'Invalid digit list';
  secInvalDigitMode                 {13839} = 'Invalid digit mode';
  secInvalDigits                    {13840} = 'Invalid digits';
  secInvalExtVersion                {13841} = 'Invalid ext version';
  secInvalGroupID                   {13842} = 'Invalid group ID';
  secInvalLineHandle                {13843} = 'Invalid line handle';
  secInvalLineState                 {13844} = 'Invalid line state';
  secInvalLocation                  {13845} = 'Invalid location';
  secInvalMediaList                 {13846} = 'Invalid media list';
  secInvalMediaMode                 {13847} = 'Invalid media mode';
  secInvalMessageID                 {13848} = 'Invalid message ID';
  secInvalParam                     {13850} = 'Invalid parameter';
  secInvalParkID                    {13851} = 'Invalid park ID';
  secInvalParkMode                  {13852} = 'Invalid park mode';
  secInvalPointer                   {13853} = 'Invalid pointer';
  secInvalPrivSelect                {13854} = 'Invalid privilege select';
  secInvalRate                      {13855} = 'Invalid rate';
  secInvalRequestMode               {13856} = 'Invalid request mode';
  secInvalTerminalID                {13857} = 'Invalid terminal ID';
  secInvalTerminalMode              {13858} = 'Invalid terminal mode';
  secInvalTimeout                   {13859} = 'Invalid timeout';
  secInvalTone                      {13860} = 'Invalid tone';
  secInvalToneList                  {13861} = 'Invalid tone list';
  secInvalToneMode                  {13862} = 'Invalid tone mode';
  secInvalTransferMode              {13863} = 'Invalid transfer mode';
  secLineMapperFailed               {13864} = 'Line mapper failed';
  secNoConference                   {13865} = 'No conference';
  secNoDevice                       {13866} = 'No device';
  secNoDriver                       {13867} = 'No driver';
  secNoMem                          {13868} = 'No memory';
  secNoRequest                      {13869} = 'No request';
  secNotOwner                       {13870} = 'Not owner';
  secNotRegistered                  {13871} = 'Not registered';
  secOperationFailed                {13872} = 'Operation failed';
  secOperationUnavail               {13873} = 'Operation unavailable';
  secRateUnavail                    {13874} = 'Rate unavailable';
  secResourceUnavail                {13875} = 'Resource unavailable';
  secRequestOverrun                 {13876} = 'Request overrun';
  secStructureTooSmall              {13877} = 'Structure too small';
  secTargetNotFound                 {13878} = 'Target not found';
  secTargetSelf                     {13879} = 'Target is self';
  secUninitialized                  {13880} = 'Uninitialized';
  secUserUserInfoTooBig             {13881} = 'User info too big';
  secReinit                         {13882} = 'Reinit failed';
  secAddressBlocked                 {13883} = 'Address blocked';
  secBillingRejected                {13884} = 'Billing rejected';
  secInvalFeature                   {13885} = 'Invalid feature';
  secNoMultipleInstance             {13886} = 'No multiple instance';

  {Apro encounters a few of its own TAPI errors, place these error
   codes after the native TAPI error codes, but leave a little bit
   of room for expansion of the TAPI error codes.}
  secTapiBusy                       {13928} = 'TAPI already open, dialing or answering';
  secTapiNotSet                     {13929} = 'TapiMode not set in TApdComPort';
  secTapiNoSelect                   {13930} = 'No TAPI device selected';
  secTapiLoadFail                   {13931} = 'Failed to find/load TAPI.DLL';
  secTapiGetAddrFail                {13932} = 'Failed to get TAPI address';
  sTAPIdisabled16bit                {13933} = 'TAPI disabled for 16-bit environments';
  secTapiUnexpected                 {13934} = 'Unexpected TAPI error';
  secTapiVoiceNotSupported          {13935} = 'TAPI device does not support voice extensions';
  secTapiWaveFail                   {13936} = 'TAPI wave file error';
  secTapiCIDBlocked                 {13937} = 'Caller ID Blocked';
  secTapiCIDOutOfArea               {13938} = 'Out of Area Call';
  secTapiWaveFormatError            {13939} = 'The selected file is not a wave file';
  secTapiWaveReadError              {13940} = 'Unable to read wave file data';
  secTapiWaveBadFormat              {13941} = 'Unsupported wave format';
  secTapiTranslateFail              {13942} = 'Unable to translate address';
  secTapiWaveDeviceInUse            {13943} = 'Wave device in use';
  secTapiWaveFileExists             {13944} = 'Wave file already exists';
  secTapiWaveNoData                 {13945} = 'No wave data available';

  secVoIPNotSupported               {13950} = 'Voice over IP not available (requires Windows 2000 and above)';
  secVoIPCallBusy                   {13951} = 'Remote was busy';
  secVoIPBadAddress                 {13952} = 'Destination address bad';
  secVoIPNoAnswer                   {13953} = 'Remote did not answer';
  secVoIPCancelled                  {13954} = 'Cancelled';
  secVoIPRejected                   {13955} = 'Remote rejected the call';
  secVoIPFailed                     {13956} = 'General failure';
  secVoIPTapi3NotInstalled          {13957} = 'ITTapi interface failure';
  secVoIPH323NotFound               {13958} = 'H.323 line not found';
  secVoIPTapi3EventFailure          {13959} = 'Event notify failure';

  {RAS error codes}
  secRasLoadFail                    {13980} = 'Failed to find/load RASAPI32.DLL';

  { Logging - It is unlikely that these should change, these strings are }
  { used in the dispatcher log.  Translating them into another language  }
  { could make it difficult for TurboPower Tech Support to decipher it.  }
  { Dispatch type. Instead of duplicating the strings in the different   }
  { language include files, we'll just include a common file here.       }
  {$I AdDispLog.inc}

  {XML strings}
  sIENotInstalled       = 'Cannot open WININET, Microsoft IE required';
  sOpenFileFailed       = 'Kunde inte �ppna filen ';
  sFileNotFound         = 'File %s could not be found';
  sAllocSrcMemFailed    = 'Kunde inte allokera minne f�r XML-k�lla';
  sHttpReadReqFailed    = 'HTTP-l�sning misslyckades';
  sHttpDataNotAvail     = 'HTTP-data ej tillg�ngligt';
  sHttpReqSendFailed    = 'Kunde inte skicka HTTP-beg�ran';
  sHttpReqOpenFailed    = 'Kunde inte �ppna HTTP-beg�ran';
  sInetConnectFailed    = 'Kunde inte skapa internet-uppkoppling';
  sInetOpenFailed       = 'Kunde inte �ppna Internet';
  sInvalidFtpLoc        = 'Felaktig FTP-adress';
  sInvalidFtpDir        = 'Felaktig FTP-katalog';
  sFtpReadReqFailed     = 'FTP-l�sning misslyckades';
  sFtpDataNotAvail      = 'FTP-data ej tillg�ngligt';
  sFtpOpenFileFailed    = 'Kunde inte �ppna FTP-fil';
  sFtpPutFileFailed     = 'Could not save file via ftp to %s';            
  sSrcLoadFailed        = 'Kunde inte ladda in ';
  sInvalidMemPtr        = 'Felaktig minnespekare';
  sFmtErrorMsg          = 'Rad: %d Kol: %d Fel: %s';
  sIndexOutOfBounds     = 'FEL: F�R STORT INDEX';
  sExpMarkupDecl        = 'F�rv�ntade sig markup declaration';
  sIllAttrType          = 'Felaktigt attributtyp';
  sIllAttrDefKeyw       = 'Felaktigt keyword f�r attributets default-v�rde';
  sSysIdMissing         = 'System-identiferare saknas ';
  sExtModifMissing      = 'Extern identifierare saknas ';
  sIllCondSectStart     = 'Villkorligt avsnitt m�ste b�rja med INCLUDE eller IGNORE';
  sBadSepInModel        = 'Felaktigt skiljetecken ';
  sExpCommentOrCDATA    = 'Borde vara kommentar eller CDATA section ';
  sUnexpectedEof        = 'Ov�ntat slut p� filen';
  sMismatchEndTag       = 'Felaktig placerad slut-tag ';
  sIllCharInRef         = 'Ogiltigt tecken i referens';
  sUndeclaredEntity     = 'Referens till odeklarerad entity ';
  sExpectedString       = 'F�rv�ntad str�ng ';
  sSpaceExpectedAt      = 'Whitespace f�rv�ntat vid byte ';
  sUnexpEndOfInput      = 'Input tog slut innan det kom en delimiter ';
  sQuoteExpected        = 'F�rv�ntade sig " or ' + Chr (39);
  sInvalidXMLVersion    = 'XMLPartner does not support XML specification greater than %s'; 
  sUnableCreateStr      = 'Unable to create stream for input.';
  sInvalidName          = 'Invalid XML name';
  sInvalidCommentText   = 'Invalid comment text';
  sCommentBeforeXMLDecl = 'Document cannot start with a comment if it also contains an XML declaration';
  sInvalidCDataSection  = 'Invalid characters in CDATA section';
  sRedefinedAttr        = 'Attributes cannot be redefined in a start tag';
  sCircularEntRef       = 'Circular reference to: ';
  sInvAttrChar          = 'Invalid character in attribute value: ';
  sInvPCData            = 'Invalid characters in element''s character data: ';
  sDataAfterValDoc      = 'There is invalid data after valid XML document';
  sNoIntConditional     = 'Conditional sections not allowed in internal subset of document type declaration';
  sNotationNotDeclared  = 'Notation not declared: ';
  sInvPubIDChar         = 'Invalid PublicID character: ';
  sNoNDATAInPeDecl      = 'NDATA not allowed in parameter entity declaration.';
  sInvStandAloneVal     = 'Standalone value must equal ''yes'' or ''no''';
  sInvEncName           = 'Invalid encoding declaration: ';
  sInvVerNum            = 'Invalid XML version number: ';
  sInvEntityValue       = 'Invalid character in entity value: ';
  sNoCommentInMarkup    = 'Comments can not be placed within other markup';
  sNoPEInIntDTD         = 'Parameter entities not allowed in DTD internal subset';
  sXMLDecNotAtBeg       = 'The XML declaration must appear before the first element';
  sInvalidElementName   = 'Invalid element name: ';
  sBadParamEntNesting   = 'Parameter-entity text must be properly nested: ';
  sInvalidCharEncoding  = 'Invalid character encoding specified.';
  sAttrNotNum           = 'Attribute %s of element %s does not have an integer value.'; 
  sUnknownAxis          = 'Unknown axis specifier: %s';

  {xpchrstm related errors}
  sInvalidXMLChar       = 'Invalid XML Character found';
  sInvalidBEChar        = 'Invalid (big-endian) UTF-16 character encoding';
  sInvalidLEChar        = 'Invalid (little-endian) UTF-16 character encoding';
  sBadUTF8Char          = 'Badly formed UTF-8 character in stream';
  sErrEndOfDocument     = 'Unexpected end of document stream';
  sUCS_ISOConvertErr    = 'Cannot convert UCS-4 character to ISO-8859-1';
  sUCS_U16ConvertErr    = 'Cannot convert UCS-4 character to UTF-16';
  sUCS_U8ConverErr      = 'Cannot convert UCS-4 character to UTF-8';

  {EModem error string resource}
  sModemDetectedBusy    = 'Line is Busy';
  sModemNoDialtone      = 'No Dialtone';
  sModemNoCarrier       = 'No Carrier';
    
  {TApdPager string resource}
  sInitFail             = 'Modem Initialization Failure';
  sLoginFail            = 'Failed to Login';
  sMinorSrvErr          = 'Minor Server Error';
  sFatalSrvErr          = 'Fatal Server Error';
  sConnected            = 'Modem Connected';
  sCancelled            = 'Cancel Requested';
  sLineBusy             = 'Line Busy';
  sDisconnect           = 'Disconnecing';
  sNoDialtone           = 'No Dialtone';
  sMsgNotSent           = 'Message not sent';
  sWaitingToRedial      = 'Waiting to Redial';
  sLoginPrompt          = 'Received Prompt for Login';
  sLoggedIn             = 'Successful Login';
  sDialing              = 'Now Dialing';
  sRedialing            = 'Now Redialing';
  sLoginRetry           = 'Retry Password for Login';
  sMsgOkToSend          = 'Ready to Send Message';
  sSendingMsg           = 'Now sending Message';
  sMsgAck               = 'Received, Send next block or end';
  sMsgNak               = 'Received Error, Resend Message';
  sMsgRs                = 'Unable to Send Page';
  sMsgCompleted         = 'Page Complete - Logging out if done';
  sSendTimedOut         = 'Timed Out - No Response';
  sLoggingOut           = 'Logging Out';
  sDone                 = 'Done with Page';

  {TApdVoIP error string resource}
  sVoIPNotAvailable     = 'Voice over IP not available (requires Windows 2000 and above)';

  {TFaxLogCode description strings, used by TApdAbstractFax.LogMsg method}
  slfaxNone             = 'none';
  slfaxTransmitStart    = 'transmit started';
  slfaxTransmitOk       = 'transmit finished okay';
  slfaxTransmitFail     = 'transmit failed';
  slfaxReceiveStart     = 'receive started';
  slfaxReceiveOk        = 'receive finished okay';
  slfaxReceiveSkip      = 'receive skipped on request';
  slfaxReceiveFail      = 'receive failed';

