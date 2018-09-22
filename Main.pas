unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, RIRLib,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxTextEdit, Vcl.ExtCtrls, System.IOUtils, System.Types, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBAccess, Ora, dxmdaset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StrUtils, cxLabel,
  cxCurrencyEdit, cxCalendar, cxMemo, MemDS;

type
  TfrmMain = class(TForm)
    al: TActionList;
    actGetDir: TAction;
    pnlTop: TPanel;
    teDir: TcxTextEdit;
    cmdDir: TcxButton;
    od: TFileOpenDialog;
    tvHdr: TcxGridDBTableView;
    Hdr: TcxGridLevel;
    grd: TcxGrid;
    mdHdr: TdxMemData;
    dsHdr: TOraDataSource;
    cbSelectFileSet: TcxLookupComboBox;
    mdFileList: TdxMemData;
    mdFileListFileName: TStringField;
    mdFileListFileDesc: TStringField;
    mdFileListFileDir: TStringField;
    dsFileList: TOraDataSource;
    cxLabel1: TcxLabel;
    cmdGetFiles: TcxButton;
    actLoadFileSet: TAction;
    mdHdrID: TIntegerField;
    mdHdrCompanyID: TIntegerField;
    mdHdrTypeID: TIntegerField;
    mdHdrStatusID: TIntegerField;
    mdHdrCategoryID: TIntegerField;
    mdHdrRecordDate: TDateTimeField;
    mdHdrPayorID: TIntegerField;
    mdHdrDocNum: TStringField;
    mdHdrDocRoute: TStringField;
    mdHdrDocAcct: TStringField;
    mdHdrDocPath: TStringField;
    mdHdrComments: TMemoField;
    mdHdrWSUID: TIntegerField;
    mdHdrLocKey: TIntegerField;
    mdHdrCreateDate: TDateTimeField;
    tvHdrRecId: TcxGridDBColumn;
    tvHdrID: TcxGridDBColumn;
    tvHdrCompanyID: TcxGridDBColumn;
    tvHdrTypeID: TcxGridDBColumn;
    tvHdrStatusID: TcxGridDBColumn;
    tvHdrCategoryID: TcxGridDBColumn;
    tvHdrRecordDate: TcxGridDBColumn;
    tvHdrPayorID: TcxGridDBColumn;
    tvHdrDocNum: TcxGridDBColumn;
    tvHdrDocRoute: TcxGridDBColumn;
    tvHdrDocAcct: TcxGridDBColumn;
    tvHdrDocPath: TcxGridDBColumn;
    tvHdrComments: TcxGridDBColumn;
    tvHdrWSUID: TcxGridDBColumn;
    tvHdrLocKey: TcxGridDBColumn;
    tvHdrCreateDate: TcxGridDBColumn;
    mdDet: TdxMemData;
    dsDet: TOraDataSource;
    mdDetID: TIntegerField;
    mdDetAcctID: TIntegerField;
    mdDetHdrID: TIntegerField;
    mdDetJobID: TIntegerField;
    mdDetProgramID: TIntegerField;
    mdDetLineAmt: TCurrencyField;
    mdDetLineComment: TMemoField;
    mdDetExemptSW: TStringField;
    mdDetBeneficiaryID: TIntegerField;
    mdDetCoveredStartDate: TDateField;
    mdDetCoveredEndDate: TDateField;
    mdDetWSUID: TIntegerField;
    mdDetLocKey: TIntegerField;
    mdDetCreateDate: TDateTimeField;
    Det: TcxGridLevel;
    tvDet: TcxGridDBTableView;
    tvDetRecId: TcxGridDBColumn;
    tvDetID: TcxGridDBColumn;
    tvDetHdrID: TcxGridDBColumn;
    tvDetAcctID: TcxGridDBColumn;
    tvDetJobID: TcxGridDBColumn;
    tvDetProgramID: TcxGridDBColumn;
    tvDetLineAmt: TcxGridDBColumn;
    tvDetLineComment: TcxGridDBColumn;
    tvDetExemptSW: TcxGridDBColumn;
    tvDetBeneficiaryID: TcxGridDBColumn;
    tvDetCoveredStartDate: TcxGridDBColumn;
    tvDetCoveredEndDate: TcxGridDBColumn;
    tvDetWSUID: TcxGridDBColumn;
    tvDetLocKey: TcxGridDBColumn;
    tvDetCreateDate: TcxGridDBColumn;
    teValue: TcxTextEdit;
    cxLabel2: TcxLabel;
    mdHdrDocTotal: TCurrencyField;
    tvHdrDocTotal: TcxGridDBColumn;
    memFB: TcxMemo;
    actPost: TAction;
    cmdPost: TcxButton;
    spHeader: TOraStoredProc;
    spDetail: TOraStoredProc;
    actDepositReview: TAction;
    cmdDepositReview: TcxButton;
    procedure actGetDirExecute(Sender: TObject);
    procedure cbSelectFileSetPropertiesChange(Sender: TObject);
    procedure actLoadFileSetExecute(Sender: TObject);
    procedure actPostExecute(Sender: TObject);
    procedure actDepositReviewExecute(Sender: TObject);
  private
    NumFileSets: Integer;
    FileList: TStringDynArray;
  public
    TFiles: array of TDepSet;
    CurrDir: String;
    CurrBaseFileName: String;
    FIn: TStreamReader;
    CurrLine: String;
    ListVals: TStringList;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses SyncData, DepositReview;


procedure TfrmMain.actDepositReviewExecute(Sender: TObject);
begin
    Application.CreateForm(TfrmDepositReview, frmDepositReview);
    DSSET(frmDepositReview);
    frmDepositReview.Show;
end;

procedure TfrmMain.actGetDirExecute(Sender: TObject);
var
  i: Integer;
  BFDepSet: TDepSet;
begin
FileList:=TStringDynArray.Create();
   if od.Execute() then
   begin
     CurrDir:=od.FileName;
     FileList:=TDirectory.GetFiles(CurrDir, '*Hdr*');
     NumFileSets:=Length(FileList);
     SetLength(TFiles,NumFileSets);
     teDir.Text:=CurrDir;
     //mdHdr.Active;
     //+' ('+inttostr(NumFileSets)+')';
     for i := 0 to NumFileSets-1 do
       begin
        TFiles[i].BaseFileName:=ExtractFileName(FileList[i]);
        BFDepSet:=BreakFileName(TFiles[i].BaseFileName);
        TFiles[i].SrcDir:=ExtractFilePath(FileList[i]);
        TFiles[i].HdrNum:=GetLineCount(FileList[i]);
        TFiles[i].FileType:=BFDepSet.FileType;
        TFiles[i].WSUID:=BFDepSet.WSUID;
        TFiles[i].PostDate:=BFDepSet.PostDate;
        TFiles[i].PostTime:=BFDepSet.PostTime;
        TFiles[i].DetNum:=GetLineCount(TFiles[i].SrcDir+'TransDet_'+inttostr(TFiles[i].WSUID)+'_'+TFiles[i].PostDate+'_'+TFiles[i].PostTime);
       end;
     with mdFileList do
     for i := 0 to NumFileSets - 1 do
       begin
         Insert;
         FieldByName('FileName').AsString:=RightStr(TFiles[i].BaseFileName,Length(TFiles[i].BaseFileName)-9);
         FieldByName('FileDir').AsString:=TFiles[i].SrcDir;
         FieldByName('FileDesc').AsString:=LeftStr(TFiles[i].PostDate,4)
            +'-'+MidStr(TFiles[i].PostDate,5,2)
            +'-'+RightStr(TFiles[i].PostDate,2)
            +' : ('+inttostr(TFiles[i].HdrNum)+'/'+inttostr(TFiles[i].DetNum)+')'
            +' - '+TFiles[i].PostTime;
         Post;
       end;
   end;
end;

procedure TfrmMain.actLoadFileSetExecute(Sender: TObject);
var
  FileVal: double;
begin
ListVals:=TStringList.Create;
//Poulate Header
FIn:=TStreamReader.Create(TFileStream.Create(CurrDir+'\TransHdr_'+CurrBaseFileName,fmOpenRead or fmShareDenyNone));
CurrLine:=FIn.ReadLine;
//CurrLine:=FIn.ReadLine;
mdHdr.Active:=False;
mdHdr.Active:=True;
while not FIn.EndOfStream do
begin
  CurrLine:=FIn.ReadLine;
  ParseBy(#9,CurrLine,ListVals);
  mdHdr.Insert;
  mdHdr.FieldByName('ID').AsInteger:=strtoint(ListVals[0]);
  mdHdr.FieldByName('CompanyID').AsInteger:=strtoint(ListVals[1]);
  mdHdr.FieldByName('TypeID').AsInteger:=strtoint(ListVals[2]);
  mdHdr.FieldByName('StatusID').AsInteger:=strtoint(ListVals[3]);
  mdHdr.FieldByName('CategoryID').AsInteger:=strtoint(ListVals[4]);
  mdHdr.FieldByName('RecordDate').AsDateTime:=StrtoDateStd(ListVals[5]);
  mdHdr.FieldByName('PayorID').AsInteger:=strtoint(ListVals[6]);
  mdHdr.FieldByName('DocNum').AsString:=ListVals[7];
  mdHdr.FieldByName('DocRoute').AsString:=ListVals[8];
  mdHdr.FieldByName('DocAcct').AsString:=ListVals[9];
  mdHdr.FieldByName('DocPath').AsString:=ListVals[10];
  mdHdr.FieldByName('Comments').AsString:=ListVals[11];
  mdHdr.FieldByName('WSUID').AsInteger:=strtoint(ListVals[12]);
  mdHdr.FieldByName('LocKey').AsInteger:=strtoint(ListVals[13]);
  mdHdr.FieldByName('CreateDate').AsDateTime:=StrtoDateStd(ListVals[14]);
  mdHdr.FieldByName('DocTotal').Value:=0;
  mdHdr.Post;
end;
FIn.Close;
FIn.Destroy;
//Popuulate Detail
FIn:=TStreamReader.Create(TFileStream.Create(CurrDir+'\TransDet_'+CurrBaseFileName,fmOpenRead or fmShareDenyNone));
CurrLine:=FIn.ReadLine;
mdDet.Active:=False;
mdDet.Active:=True;
FileVal:=0;
while not FIn.EndOfStream do
begin
  CurrLine:=FIn.ReadLine;
  ParseBy(#9,CurrLine,ListVals);
  mdDet.Insert;
  mdDet.FieldByName('ID').AsInteger:=strtoint(ListVals[0]);
  mdDet.FieldByName('HdrID').AsInteger:=strtoint(ListVals[1]);
  mdDet.FieldByName('AcctID').AsInteger:=strtoint(ListVals[2]);
  if length(ListVals[3]) > 0 then
    mdDet.FieldByName('JobID').AsInteger:=strtoint(ListVals[3]);
  if length(ListVals[4]) > 0 then
    mdDet.FieldByName('ProgramID').AsInteger:=strtoint(ListVals[4]);
  mdDet.FieldByName('LineAmt').Value:=ListVals[5];
  FileVal:=FileVal+StrToFloat(ListVals[5]);
  if mdHdr.locate('ID',mdDet.FieldByName('HdrID').asInteger,[]) then
    begin
      mdHdr.Edit;
      mdHdr.FieldByName('DocTotal').Value:=mdHdr.FieldByName('DocTotal').Value+mdDet.FieldByName('LineAmt').Value;
      mdHdr.Post;
    end;
  mdDet.FieldByName('LineComment').AsString:=ListVals[6];
  mdDet.FieldByName('ExemptSW').Value:=ListVals[7];
  if length(ListVals[8]) > 0 then
    mdDet.FieldByName('BeneficiaryID').AsInteger:=strtoint(ListVals[8]);
  if length(ListVals[9]) > 7 then
    mdDet.FieldByName('CoveredStartDate').AsDateTime:=StrtoDateStd(ListVals[9]);
  if length(ListVals[10]) > 7 then
    mdDet.FieldByName('CoveredEndDate').AsDateTime:=StrtoDateStd(ListVals[10]);
  mdDet.FieldByName('WSUID').AsInteger:=strtoint(ListVals[11]);
  mdDet.FieldByName('LocKey').AsInteger:=strtoint(ListVals[12]);
  mdDet.FieldByName('CreateDate').AsDateTime:=StrtoDateStd(ListVals[13]);
  mdDet.Post;
end;
FIn.Close;
FIn.Destroy;
teValue.Text:=floattostr(FileVal);
end;

procedure TfrmMain.actPostExecute(Sender: TObject);
var
  i, j: Integer;
  CurrLocID, CurrLocDetID: Integer;
  CurrRemID, CurrRemDetID: Integer;
begin
with mdHdr do
begin
First;
for i := 1 to RecordCount do
  begin
    CurrLocID:=fieldByName('ID').AsInteger;
    with spHeader do
    begin
      Active:=False;
      ParamByName('i_ACT_TYPE').Value:='A';
      ParamByName('i_COMPANY_ID').AsInteger:=mdHdrCompanyID.AsInteger;
      ParamByName('i_TYPE_ID').AsInteger:=mdHdrTypeID.AsInteger;
      ParamByName('i_STATUS_ID').AsInteger:=mdHdrStatusID.AsInteger;
      ParamByName('i_CATEGORY_ID').AsInteger:=mdHdrCategoryID.AsInteger;
      ParamByName('i_RECORD_DATE').AsDateTime:=mdHdrRecordDate.AsDateTime;
      ParamByName('i_PAYOR_ID').AsInteger:=mdHdrPayorID.AsInteger;
      ParamByName('i_DOC_NUM').AsString:=mdHdrDocNum.AsString;
      ParamByName('i_DOC_ROUTE').AsString:=mdHdrDocRoute.AsString;
      ParamByName('i_DOC_ACCT').AsString:=mdHdrDocAcct.AsString;
      ParamByName('i_DOC_PATH').AsString:=mdHdrDocPath.AsString;
      ParamByName('i_COMMENTS').AsString:=mdHdrComments.AsString;
      ParamByName('i_WSUID').AsInteger:=mdHdrWSUID.AsInteger;
      ParamByName('i_LOC_KEY').AsInteger:=mdHdrLocKey.AsInteger;
      Execute;
      CurrRemID:=ParamByName('o_ID').AsInteger;
    end;
    memFB.Lines.Add(inttostr(CurrLocID));
    with mdDet do
    begin
      First;
      for j := 1 to RecordCount do
        begin
          CurrLocDetID:=FieldByName('ID').asInteger;
          if fieldByName('HdrID').AsInteger=CurrLocID then
            with spDetail do
            begin
              Active:=False;
              ParamByName('i_ACT_TYPE').Value:='A';
              ParamByName('i_HDR_ID').AsInteger:=CurrRemID;
              ParamByName('i_ACCT_ID').AsInteger:=mdDetAcctID.AsInteger;
              ParamByName('i_JOB_ID').AsInteger:=mdDetJobID.AsInteger;
              ParamByName('i_PROGRAM_ID').AsInteger:=mdDetProgramID.AsInteger;
              ParamByName('i_LINE_AMT').Value:=mdDetLineAmt.Value;
              ParamByName('i_LN_COMMENT').AsString:=mdDetLineComment.AsString;
              ParamByName('i_EXEMPT_SW').Value:=mdDetExemptSW.Value;
              ParamByName('i_BENEFICIARY_ID').AsInteger:=mdDetBeneficiaryID.AsInteger;
              ParamByName('i_COVERED_START_DATE').AsDateTime:=mdDetCoveredStartDate.AsDateTime;
              ParamByName('i_COVERED_END_DATE').AsDateTime:=mdDetCoveredEndDate.AsDateTime;
              ParamByName('i_WSUID').AsInteger:=mdDetWSUID.AsInteger;
              ParamByName('i_LOC_KEY').AsInteger:=mdDetLocKey.AsInteger;
              Execute;
            end;
          Next;
        end;
    end;
    Next;
  end;
end;

end;

procedure TfrmMain.cbSelectFileSetPropertiesChange(Sender: TObject);
begin
  CurrBaseFileName:=cbSelectFileSet.EditValue;
end;

end.
