unit Start;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  cxButtons, System.ImageList, Vcl.ImgList;

type
  TfrmStart = class(TForm)
    al: TActionList;
    cmdEntityMaster: TcxButton;
    cmdReviewData: TcxButton;
    cmdLoadFile: TcxButton;
    actEntityMaster: TAction;
    actReviewData: TAction;
    actLoadFile: TAction;
    il: TcxImageList;
    actMasterTables: TAction;
    cmdMasterTebles: TcxButton;
    cxButton1: TcxButton;
    actReports: TAction;
    procedure actLoadFileExecute(Sender: TObject);
    procedure actReviewDataExecute(Sender: TObject);
    procedure actEntityMasterExecute(Sender: TObject);
    procedure actMasterTablesExecute(Sender: TObject);
    procedure actReportsExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStart: TfrmStart;

implementation

{$R *.dfm}

uses Main, RIRLib, DepositReview, EntityMaster, MasterTables, Reports;

procedure TfrmStart.actEntityMasterExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmEntityMaster, frmEntityMaster);
  DSSET(frmEntityMaster);
  frmEntityMaster.Show;
end;

procedure TfrmStart.actLoadFileExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmMain, frmMain);
  DSSET(frmMain);
  frmMain.Show;
end;

procedure TfrmStart.actMasterTablesExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmMasterTables, frmMasterTables);
  DSSET(frmMasterTables);
  frmMasterTables.Show;
end;

procedure TfrmStart.actReportsExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmReports, frmReports);
  DSSET(frmReports);
  frmReports.Show;
end;

procedure TfrmStart.actReviewDataExecute(Sender: TObject);
begin
  Application.CreateForm(TfrmDepositReview, frmDepositReview);
  DSSET(frmDepositReview);
  frmDepositReview.Show;
end;

end.
