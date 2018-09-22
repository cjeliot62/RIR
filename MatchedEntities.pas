unit MatchedEntities;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, System.Actions,
  Vcl.ActnList, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DBAccess, Ora;

type
  TfrmMatchedEntities = class(TForm)
    tvEntList: TcxGridDBTableView;
    lvlEntList: TcxGridLevel;
    grd: TcxGrid;
    dsEntityList: TOraDataSource;
    tvEntListID: TcxGridDBColumn;
    tvEntListENTSURNAME: TcxGridDBColumn;
    tvEntListENTMIDDLENAME: TcxGridDBColumn;
    tvEntListENTFIRSTNAME: TcxGridDBColumn;
    tvEntListENTGENQUAL: TcxGridDBColumn;
    tvEntListENTKNOWNNAME: TcxGridDBColumn;
    tvEntListENTTYPEID: TcxGridDBColumn;
    tvEntListTYPE_NAME: TcxGridDBColumn;
    tvEntListENTCATID: TcxGridDBColumn;
    tvEntListCATEGORY_NAME: TcxGridDBColumn;
    tvEntListENTSTATUSID: TcxGridDBColumn;
    tvEntListSTATUS_NAME: TcxGridDBColumn;
    tvEntListFEERATEID: TcxGridDBColumn;
    tvEntListPREVID: TcxGridDBColumn;
    tvEntListWSUID: TcxGridDBColumn;
    tvEntListLOC_KEY: TcxGridDBColumn;
    procedure tvEntListCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMatchedEntities: TfrmMatchedEntities;

implementation

{$R *.dfm}

uses EntityMaster, SyncData;

procedure TfrmMatchedEntities.tvEntListCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
if AButton = mbRight then
  if tvEntListID.EditValue > 0 then
    with frmEntityMaster do
    begin
      selEntityID:=tvEntListID.EditValue;
      EntFound:=True;
    end;
frmMatchedEntities.Close;
end;

end.
