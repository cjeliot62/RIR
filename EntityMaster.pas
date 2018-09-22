unit EntityMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBAccess, Ora, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  System.Actions, Vcl.ActnList, MemDS, OraSmart, Vcl.ExtCtrls, cxDBNavigator,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxSpinEdit, cxCheckBox, cxDBEdit,
  cxCalendar, cxCurrencyEdit;

type
  TfrmEntityMaster = class(TForm)
    pnlSearch: TPanel;
    tblEntity: TOraTable;
    al: TActionList;
    actGetEntity: TAction;
    spGetEntity: TOraStoredProc;
    tvContributions: TcxGridDBTableView;
    lvlContributions: TcxGridLevel;
    grd: TcxGrid;
    pnlEntity: TPanel;
    qrySelList: TOraQuery;
    spGetStdLists: TOraStoredProc;
    dsStdLists: TOraDataSource;
    selList: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxDBNavigator1: TcxDBNavigator;
    dsEntity: TOraDataSource;
    actGetEntityList: TAction;
    actFilterList: TAction;
    selListValue: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    dsGetStdList: TOraDataSource;
    gbAttrib: TGroupBox;
    selName: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    selID: TcxSpinEdit;
    cmdAttrib: TcxButton;
    cmdName: TcxButton;
    actFindByName: TAction;
    actFindByID: TAction;
    actFindByAttib: TAction;
    cmdID: TcxButton;
    actEvalEntityList: TAction;
    selNegate: TcxCheckBox;
    teFirstName: TcxDBTextEdit;
    teMiddle: TcxDBTextEdit;
    teLast: TcxDBTextEdit;
    teKnownName: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    tePreviousID: TcxDBTextEdit;
    qryEntType: TOraQuery;
    qryEntStatus: TOraQuery;
    qryEntCategory: TOraQuery;
    dsEntType: TOraDataSource;
    dsEntStatus: TOraDataSource;
    dsEntCategory: TOraDataSource;
    cbEntCategory: TcxDBLookupComboBox;
    cbEntType: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    tblContHdr: TOraTable;
    dsContHdr: TOraDataSource;
    tvContributionsID: TcxGridDBColumn;
    tvContributionsCOMPANY_ID: TcxGridDBColumn;
    tvContributionsTYPE_ID: TcxGridDBColumn;
    tvContributionsSTATUS_ID: TcxGridDBColumn;
    tvContributionsCATEGORY_ID: TcxGridDBColumn;
    tvContributionsRECORD_DATE: TcxGridDBColumn;
    tvContributionsPAYOR_ID: TcxGridDBColumn;
    tvContributionsDOC_NUM: TcxGridDBColumn;
    tvContributionsDOC_ROUTE: TcxGridDBColumn;
    tvContributionsDOC_ACCT: TcxGridDBColumn;
    tvContributionsDOC_PATH: TcxGridDBColumn;
    tvContributionsDOC_AMT: TcxGridDBColumn;
    tvContributionsCOMMENTS: TcxGridDBColumn;
    tvContributionsWSUID: TcxGridDBColumn;
    tvContributionsLOC_KEY: TcxGridDBColumn;
    tvContributionsCREATE_DATE: TcxGridDBColumn;
    tvContributionsUPDATE_DATE: TcxGridDBColumn;
    lvlCOntDet: TcxGridLevel;
    tvContDet: TcxGridDBTableView;
    tblContDet: TOraTable;
    dsContDet: TOraDataSource;
    tvContDetID: TcxGridDBColumn;
    tvContDetHDR_ID: TcxGridDBColumn;
    tvContDetACCT_ID: TcxGridDBColumn;
    tvContDetJOB_ID: TcxGridDBColumn;
    tvContDetPROGRAM_ID: TcxGridDBColumn;
    tvContDetLINE_AMT: TcxGridDBColumn;
    tvContDetLN_COMMENT: TcxGridDBColumn;
    tvContDetEXEMPT_SW: TcxGridDBColumn;
    tvContDetBENEFICIARY_ID: TcxGridDBColumn;
    tvContDetCOVERED_START_DATE: TcxGridDBColumn;
    tvContDetCOVERED_END_DATE: TcxGridDBColumn;
    tvContDetWSUID: TcxGridDBColumn;
    tvContDetLOC_KEY: TcxGridDBColumn;
    tvContDetCREATE_DATE: TcxGridDBColumn;
    lvlAddress: TcxGridLevel;
    tvAddress: TcxGridDBTableView;
    tblEntAddress: TOraTable;
    dsEntAddress: TOraDataSource;
    tvAddressID: TcxGridDBColumn;
    tvAddressENTID: TcxGridDBColumn;
    tvAddressADDR1: TcxGridDBColumn;
    tvAddressADDR2: TcxGridDBColumn;
    tvAddressCITY: TcxGridDBColumn;
    tvAddressSTATEPROV: TcxGridDBColumn;
    tvAddressPOSTALCODE: TcxGridDBColumn;
    tvAddressCATEGORYID: TcxGridDBColumn;
    tvAddressTYPEID: TcxGridDBColumn;
    tvAddressSTATUSID: TcxGridDBColumn;
    tvAddressCOUNTRYID: TcxGridDBColumn;
    dsAddrCategory: TOraDataSource;
    dsAddrType: TOraDataSource;
    dsAddrStatus: TOraDataSource;
    dsCountry: TOraDataSource;
    lvlEntIdentities: TcxGridLevel;
    tvEntIdentities: TcxGridDBTableView;
    tblEntIdentity: TOraTable;
    dsEntIdentity: TOraDataSource;
    tvEntIdentitiesID: TcxGridDBColumn;
    tvEntIdentitiesENTITY_ID: TcxGridDBColumn;
    tvEntIdentitiesSYSTEM_ID: TcxGridDBColumn;
    tvEntIdentitiesKEYSEG_1: TcxGridDBColumn;
    tvEntIdentitiesKEYSEG_2: TcxGridDBColumn;
    tvEntIdentitiesKEYSEG_3: TcxGridDBColumn;
    tvEntIdentitiesTYPE_ID: TcxGridDBColumn;
    tvEntIdentitiesSTATUS_ID: TcxGridDBColumn;
    tvEntIdentitiesCATEGORY_ID: TcxGridDBColumn;
    tvEntIdentitiesWSUID: TcxGridDBColumn;
    tvEntIdentitiesLOC_ID: TcxGridDBColumn;
    tvEntIdentitiesCREATETIME: TcxGridDBColumn;
    dsSystem: TOraDataSource;
    dsIdentType: TOraDataSource;
    dsIdentCategory: TOraDataSource;
    dsIdentStatus: TOraDataSource;
    cmdUpdateHeaders: TcxButton;
    spUpdateCntHdr: TOraStoredProc;
    actUpdateHeaders: TAction;
    procedure selListPropertiesChange(Sender: TObject);
    procedure actFilterListExecute(Sender: TObject);
    procedure actFindByNameExecute(Sender: TObject);
    procedure actEvalEntityListExecute(Sender: TObject);
    procedure actFindByIDExecute(Sender: TObject);
    procedure actFindByAttibExecute(Sender: TObject);
    procedure actGetEntityExecute(Sender: TObject);
    procedure actUpdateHeadersExecute(Sender: TObject);
  private
    { Private declarations }
  public
    CurrList, CurrObj: String;
    selEntityID: Integer;
    EntFound, Located: Boolean;
  end;

var
  frmEntityMaster: TfrmEntityMaster;

implementation

{$R *.dfm}

uses RIRLib, SyncData, Start, MatchedEntities;

procedure TfrmEntityMaster.actEvalEntityListExecute(Sender: TObject);
begin
  //ShowMessage(inttostr(spGetEntity.RecordCount)+' records found');
  with spGetEntity do
  case RecordCount of
  0:
    begin
      ShowMessage('No Entities were found with the selected criteria.');
      EntFound:=False;
    end;
  1:
    begin
      First;
      if FieldByName('ID').Value <> null then
      begin
        selEntityID:=FieldByName('ID').AsInteger;
        if selEntityID > 0 then EntFound:=True;
      end;
    end;
  2..High(Integer):
    begin
        Application.CreateForm(TfrmMatchedEntities, frmMatchedEntities);
        DSSET(frmMatchedEntities);
        frmMatchedEntities.dsEntityList.DataSet.Refresh;
        frmMatchedEntities.ShowModal;
    end;
  end;
  actGetEntity.Execute;

end;

procedure TfrmEntityMaster.actFilterListExecute(Sender: TObject);
begin
  CurrObj:='TBLENTMP001';
  with spGetStdLists do
  begin
    Active:=False;
    ParamByName('i_Obj').AsString:=CurrObj;
    Filter:='SRC = '''+CurrList+'''';
    Filtered:=True;
    Active:=True;
  end;
end;

procedure TfrmEntityMaster.actFindByAttibExecute(Sender: TObject);
begin
  with spGetEntity do
  begin
  Active:=False;
  if length(selList.EditValue) = 1 then
    ParamByName('i_TYPE').Value:=selList.EditValue;
  if selListValue.EditValue > 0 then
    ParambyName('i_KEY').AsInteger:=selListValue.EditValue;
  if selNegate.Checked then
    ParamByName('i_NEGATE').Value:='Y'
      else ParamByName('i_NEGATE').Value:='N';
  //ShowMessage('Negate Set as: '+ParamByName('i_NEGATE').Value);
  Execute;
  actEvalEntityList.Execute;
  end;
  end;

procedure TfrmEntityMaster.actFindByIDExecute(Sender: TObject);
begin
  if selID.Value > 0 then
  with spGetEntity do
  begin
    Active:=False;
    ParamByName('i_TYPE').Value:='K';
    ParamByName('i_KEY').AsInteger:=selID.Value;
    Execute;
    actEvalEntityList.Execute;
  end;
end;

procedure TfrmEntityMaster.actFindByNameExecute(Sender: TObject);
begin
  if length(selName.Text) > 0 then
  with spGetEntity do
  begin
    Active:=False;
    ParambyName('i_TYPE').Value:='N';
    ParamByName('i_STEXT').AsString:=selName.Text;
    Execute;
    actEvalEntityList.Execute;
  end;
end;

procedure TfrmEntityMaster.actGetEntityExecute(Sender: TObject);
begin
  if EntFound then
  with tblEntity do
  begin
    if not Active then Active:=True;
    if selEntityID > 0 then
      Located:=locate('ID',selEntityID,[]);
  end;
  if Located then
  begin
    if Not tblContHdr.Active then tblContHdr.Active:=True;
    if Not tblContDet.Active then tblContDet.Active:=True;
    if Not tblEntAddress.Active then tblEntAddress.Active:=True;
    if Not tblEntIdentity.Active then tblEntIdentity.Active:=True;


  end;
end;

procedure TfrmEntityMaster.actUpdateHeadersExecute(Sender: TObject);
begin
  spUpdateCntHdr.Execute;
  tblContHdr.Refresh;
  tblContDet.Refresh;
end;

procedure TfrmEntityMaster.selListPropertiesChange(Sender: TObject);
begin
  if Length(selList.EditValue) > 0 then
    begin
      CurrList:=selList.EditValue;
      actFilterList.Execute;
    end;
end;

end.
