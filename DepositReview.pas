unit DepositReview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  DBAccess, Ora, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, cxCalendar, cxLabel, cxCurrencyEdit, cxCheckBox, hyieutils,
  iexBitmaps, hyiedefs, iesettings, ieview, imageenview;

type
  TfrmDepositReview = class(TForm)
    pnlTop: TPanel;
    tvHdr: TcxGridDBTableView;
    lvlHdr: TcxGridLevel;
    grd: TcxGrid;
    dsDepositList: TOraDataSource;
    cbDepositList: TcxLookupComboBox;
    cmdGetDeposit: TcxButton;
    al: TActionList;
    actGetDeposit: TAction;
    lvlDet: TcxGridLevel;
    tvDet: TcxGridDBTableView;
    tvDetID: TcxGridDBColumn;
    tvDetHDR_ID: TcxGridDBColumn;
    tvDetACCT_ID: TcxGridDBColumn;
    tvDetJOB_ID: TcxGridDBColumn;
    tvDetPROGRAM_ID: TcxGridDBColumn;
    tvDetLINE_AMT: TcxGridDBColumn;
    tvDetLN_COMMENT: TcxGridDBColumn;
    tvDetEXEMPT_SW: TcxGridDBColumn;
    tvDetBENEFICIARY_ID: TcxGridDBColumn;
    tvDetCOVERED_START_DATE: TcxGridDBColumn;
    tvDetCOVERED_END_DATE: TcxGridDBColumn;
    tvDetWSUID: TcxGridDBColumn;
    tvDetLOC_KEY: TcxGridDBColumn;
    tvDetCREATE_DATE: TcxGridDBColumn;
    teDocLoc: TcxTextEdit;
    cxLabel1: TcxLabel;
    imgCheck: TImageEnView;
    dsTransHdr: TOraDataSource;
    tvHdrID: TcxGridDBColumn;
    tvHdrCOMPANY_ID: TcxGridDBColumn;
    tvHdrTYPE_ID: TcxGridDBColumn;
    tvHdrSTATUS_ID: TcxGridDBColumn;
    tvHdrCATEGORY_ID: TcxGridDBColumn;
    tvHdrRECORD_DATE: TcxGridDBColumn;
    tvHdrPAYOR_ID: TcxGridDBColumn;
    tvHdrDOC_NUM: TcxGridDBColumn;
    tvHdrDOC_ROUTE: TcxGridDBColumn;
    tvHdrDOC_ACCT: TcxGridDBColumn;
    tvHdrDOC_PATH: TcxGridDBColumn;
    tvHdrDOC_AMT: TcxGridDBColumn;
    tvHdrCOMMENTS: TcxGridDBColumn;
    tvHdrWSUID: TcxGridDBColumn;
    tvHdrLOC_KEY: TcxGridDBColumn;
    tvHdrCREATE_DATE: TcxGridDBColumn;
    tvHdrUPDATE_DATE: TcxGridDBColumn;
    pm: TPopupMenu;
    actFlip: TAction;
    FlipAcctandDocNum1: TMenuItem;
    procedure actGetDepositExecute(Sender: TObject);
    procedure tvHdrCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cbDepositListPropertiesInitPopup(Sender: TObject);
  private
    { Private declarations }
  public
    currDocAcct, currDocNum, currDocRoute: String;
    currHdrID, CurrDetID, CurrPayor: Integer;
  end;

var
  frmDepositReview: TfrmDepositReview;

implementation

{$R *.dfm}

uses SyncData;

procedure TfrmDepositReview.actGetDepositExecute(Sender: TObject);
begin
  //ShowMessage(cbDepositList.EditValue;
  if length(cbDepositList.EditValue) = 8 then
  with dmSync.rqryTransHdr do
  begin
    Active:=False;
    ParamByName('Dep_Date').AsString:=cbDepositList.EditValue;
    Active:=True;
  end;
  if tvDet.DataController.DataSource.DataSet.Active = False
    then tvDet.DataController.DataSource.DataSet.Active := True;
end;



procedure TfrmDepositReview.cbDepositListPropertiesInitPopup(Sender: TObject);
begin
  dmSync.qryDepositList.Refresh;
end;

procedure TfrmDepositReview.FormCreate(Sender: TObject);
begin
  with imgCheck do
  begin
    LegacyBitmap:=False;
    AutoShrink:=True;
    BorderStyle:=bsNone;
    ZoomFilter:=rfFastLinear;
    MouseInteract:=[miZoom, miScroll];
  end;
end;

procedure TfrmDepositReview.tvHdrCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  P: TPoint;
begin
  teDocLoc.Text:=tvHdrDOC_PATH.EditValue;    //ACellViewInfo.GridRecord.Values[1];
  if fileexists(teDocLoc.Text+'.jpg') then
    imgCheck.IO.LoadFromFile(tvHdrDOC_PATH.EditValue+'.jpg');
  if AButton = mbRight then
  begin
    currDocNum:=tvHdrDOC_NUM.EditValue;
    currDocAcct:=tvHdrDOC_ACCT.EditValue;
    currDocRoute:=tvHdrDOC_ROUTE.EditValue;
    currHdrID:=tvHdrID.EditValue;
    CurrPayor:=tvHdrPAYOR_ID.EditValue;
    GetCursorPos(P);
    pm.Popup(P.X,P.Y);
  end;
end;



end.
