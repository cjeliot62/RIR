unit MasterTables;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.Actions, Vcl.ActnList, Vcl.ExtCtrls, cxDBLookupComboBox, MemDS,
  DBAccess, Ora;

type
  TfrmMasterTables = class(TForm)
    pnlTop: TPanel;
    al: TActionList;
    tvAccount: TcxGridDBTableView;
    lvlAccount: TcxGridLevel;
    grd: TcxGrid;
    dsAccount: TOraDataSource;
    tvAccountID: TcxGridDBColumn;
    tvAccountACCTNUM: TcxGridDBColumn;
    tvAccountACCT_NAME: TcxGridDBColumn;
    tvAccountCATEGORY_ID: TcxGridDBColumn;
    tvAccountTYPE_ID: TcxGridDBColumn;
    tvAccountSTATUS_ID: TcxGridDBColumn;
    qryAcctCategory: TOraQuery;
    qryAcctType: TOraQuery;
    qryAcctStatus: TOraQuery;
    dsAcctCategory: TOraDataSource;
    dsAcctType: TOraDataSource;
    dsAcctStatus: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMasterTables: TfrmMasterTables;

implementation

{$R *.dfm}

uses SyncData;

end.
