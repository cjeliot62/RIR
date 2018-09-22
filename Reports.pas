unit Reports;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, cxButtons, Data.DB, DBAccess, Ora, MemDS, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxCurrencyEdit, cxCalendar,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfrmReports = class(TForm)
    pnlTop: TPanel;
    al: TActionList;
    selRpt_Year: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    qryRpt_Year: TOraQuery;
    dsRpt_Tear: TOraDataSource;
    cmdGetReportRecs: TcxButton;
    actGetRptSummary: TAction;
    cxLabel2: TcxLabel;
    selCompany: TcxLookupComboBox;
    teMinAmt: TcxTextEdit;
    teMinCnt: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    spSumm: TOraStoredProc;
    spAcct: TOraStoredProc;
    spTrans: TOraStoredProc;
    dsSumm: TOraDataSource;
    dsAcct: TOraDataSource;
    dsTrans: TOraDataSource;
    tvSummary: TcxGridDBTableView;
    lvlSummary: TcxGridLevel;
    grd: TcxGrid;
    lvlAccount: TcxGridLevel;
    tvAccount: TcxGridDBTableView;
    lvlTransaction: TcxGridLevel;
    tvTransaction: TcxGridDBTableView;
    tvSummaryCOMPANY_ID: TcxGridDBColumn;
    tvSummaryPAYOR_ID: TcxGridDBColumn;
    tvSummaryFULLNAME: TcxGridDBColumn;
    tvSummaryLAST_NAME: TcxGridDBColumn;
    tvSummaryTOTAL: TcxGridDBColumn;
    tvSummaryCNT: TcxGridDBColumn;
    tvSummaryFIRST_CONT_DATE: TcxGridDBColumn;
    tvSummaryLAST_CONT_DATE: TcxGridDBColumn;
    tvAccountPAYOR_ID: TcxGridDBColumn;
    tvAccountACCT_NAME: TcxGridDBColumn;
    tvAccountTOTAL: TcxGridDBColumn;
    tvAccountCNT: TcxGridDBColumn;
    tvAccountFIRST_CONT_DATE: TcxGridDBColumn;
    tvAccountLAST_CONT_DATE: TcxGridDBColumn;
    tvTransactionPAYOR_ID: TcxGridDBColumn;
    tvTransactionHDR_ID: TcxGridDBColumn;
    tvTransactionH_TYPE: TcxGridDBColumn;
    tvTransactionRECORD_DATE: TcxGridDBColumn;
    tvTransactionDOC_NUM: TcxGridDBColumn;
    tvTransactionDOC_AMT: TcxGridDBColumn;
    tvTransactionACCT_ID: TcxGridDBColumn;
    tvTransactionACCT_NAME: TcxGridDBColumn;
    tvTransactionLINE_AMT: TcxGridDBColumn;
    tvTransactionRPT_YR: TcxGridDBColumn;
    actCreateReport: TAction;
    cmdCreateReport: TcxButton;
    procedure actGetRptSummaryExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReports: TfrmReports;

implementation

{$R *.dfm}

uses SyncData;

procedure TfrmReports.actGetRptSummaryExecute(Sender: TObject);
var
  ValRun: Boolean;
begin
  ValRun:=True;
  if selCompany.EditValue = null then ValRun:=False
    else if selCompany.EditValue <= 0 then ValRun:=False;
  if selRpt_Year.EditValue = null then ValRun:=False
    else if selRpt_Year.EditValue <= 1900 then ValRun := False;
  if ValRun then
  begin
    with spSumm do
    begin
      Active:=False;
      ParamByName('i_TYPE').Value:='S';
      ParambyName('i_COMPANY').AsInteger:=selCompany.EditValue;
      ParambyName('i_YEAR').AsInteger:=selRpt_Year.EditValue;
      Execute;
    end;
    with spAcct do
    begin
      Active:=False;
      ParamByName('i_TYPE').Value:='A';
      ParambyName('i_COMPANY').AsInteger:=selCompany.EditValue;
      ParambyName('i_YEAR').AsInteger:=selRpt_Year.EditValue;
      Execute;
    end;
    with spTrans do
    begin
      Active:=False;
      ParamByName('i_TYPE').Value:='T';
      ParambyName('i_COMPANY').AsInteger:=selCompany.EditValue;
      ParambyName('i_YEAR').AsInteger:=selRpt_Year.EditValue;
      Execute;
    end;
  end;


end;

end.
