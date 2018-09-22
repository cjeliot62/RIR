unit RIRLib;

interface
uses Classes, SysUtils, Controls, Data.DB, WinApi.Windows, StrUtils, DateUtils;

type
  TDepSet = record
    BaseFileName: String;
    SrcDir: String;
    FileType: String;
    WSUID: Integer;
    PostDate: String;
    PostTime: String;
    HdrNum: Integer;
    DetNum: Integer;
    DetAmt: Double;
  end;

  TTransHdrRec = record
    LocID: Integer;
    Company_ID: Integer;
    Type_ID: Integer;
    Status_ID: Integer;
    Category_ID: Integer;
    PostDate: String;
    PostTime: String;
    Payor_ID: Integer;
    DOC_NUM: String;
    DOC_ROUTE: String;
    DOC_ACCT: String;
    DOC_PATH: String;
    DOC_COMMENTS: String;
    WSUID: Integer;
    LOC_KEY: Integer;
    CreateDateTime: String;
  end;

  TTransDetRec = record
    LocID: Integer;
    Hdr_ID: Integer;
    Acct_ID: Integer;
    Job_ID: Integer;
    Program_ID: Integer;
    LineAmount: double;
    LineComment: String;
    Exempt_SW: String;
    Beneficiary_ID: Integer;
    Covered_Start_Date: String;
    Covered_End_Date: String;
    WSUID: Integer;
    LOC_KEY: Integer;
    CreateDateTimne: String;
  end;

  procedure parseby(delim: char; InStr: String; var ResList: TStringList);
  function GetNetUser: string;
  function DSActivate(TargetDB: TDataSet): Integer;
  function DSSet(Sender: TWinControl): Integer;
  function GetLineCount(sFileName : String): Integer;
  function BreakFileName(sFileName : String): TDepSet;
  function StrtoDateStd(DateStr: String): TDateTime;

implementation

procedure parseby(delim: char; InStr: String;
  var ResList: TStringList);
var
  i: integer;
  Tok: String;
begin
  Tok:='';
  ResList.Clear;
  for i := 1 to InStr.Length do
    begin
      if InStr[i] <> delim then
       Tok:=Tok+InStr[i]
       else
       begin
         ResList.Add(trim(Tok));
         Tok:='';
       end;
    end;
  if Tok.Length > 0 then
    ResList.Add(trim(Tok));
end;

function GetNetUser: string;  //http://delphi.about.com/cs/adptips2002/a/bltip0102_3.htm
Var
   UserName : string;
   UserNameLen : Dword;
Begin
   UserNameLen := 255;
   SetLength(userName, UserNameLen) ;
   If GetUserName(PChar(UserName), UserNameLen) Then
     Result := Copy(UserName,1,UserNameLen - 1)
   Else
     Result := 'Unknown';
end;

function DSActivate(TargetDB: TDataSet): Integer;
  begin
    if TargetDB.Active = False then TargetDB.Active:=True
      else TargetDB.Refresh;
  end;

function DSSet(Sender: TWinControl): Integer;
var
I, vDSCnt: Integer;
TempSource, TempSet: TComponent;
OldCursor: TCursor;
  begin
    vDSCnt:=0;
    OldCursor:=Sender.Cursor;
    Sender.Cursor:=crHourGlass;
    for I:=0 to Sender.ComponentCount-1 do
      begin
        TempSource:=Sender.Components[I];
        if TempSource.InheritsFrom(TDataSource) then
        begin
          TempSet:=(TempSource as TDataSource).DataSet;
          if (TempSource as TDataSource).Tag < 2 then
            begin
              if (TempSet as TDataSet).Active = True then
                begin
                  if (TempSource as TDataSource).Tag > 0 then
                    (TempSet as TDataSet).Refresh
                end
                  else ((TempSet as TDataSet)).Active:=True;
              inc(vDSCnt);
              //if (TempSet as TDataset).Active = True then
              //  ShowMessage(Tempset.Name+' if active')
              //    else ShowMessage(TempSet.Name+' is NOT active');
            end;
        end;
      end;
      Sender.Cursor:=OldCursor;
      Result:=vDSCnt;
  end;

function GetLineCount(sFileName : String): Integer;
var
  oSL : TStringlist;
begin
  oSL := TStringlist.Create;
  oSL.LoadFromFile(sFileName);
  result := oSL.Count;
  oSL.Free;
end;

function BreakFileName(sFileName : String): TDepSet;
var
ResList: TStringList;
begin
  ResList:=TStringList.Create();
  parseby('_',sFileName, ResList);
  result.FileType:=LeftStr(ResList[0],5);
  result.WSUID:=strtoint(ResList[1]);
  result.PostDate:=ResList[2];
  result.PostTime:=ResList[3];
end;

function StrtoDateStd(DateStr: String): TDateTime;
var
  Yr, Mo, Da, Hr, Mi, Se, Ms: Word;
begin
  Yr:=strtoint(midstr(DateStr,1,4));
  Mo:=strtoint(midstr(DateStr,5,2));
  Da:=strtoint(midstr(DateStr,7,2));
  if length(DateStr) > 9 then
  begin
    Hr:=strtoint(midstr(DateStr,10,2));
    Mi:=strtoint(midstr(DateStr,12,2));
    Se:=strtoint(midstr(DateStr,14,2));
    Ms:=0;
  end
    else
    begin
      Hr:=0;
      Mi:=0;
      Se:=0;
      Ms:=0
    end;
  result:=EncodeDateTime(Yr,Mo,Da,Hr,Mi,Se,Ms);
end;

end.
