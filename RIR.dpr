program RIR;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  Review in 'Review.pas' {frmReview},
  RIRLib in 'RIRLib.pas',
  SyncData in 'SyncData.pas' {dmSync: TDataModule},
  DepositReview in 'DepositReview.pas' {frmDepositReview},
  Start in 'Start.pas' {frmStart},
  EntityMaster in 'EntityMaster.pas' {frmEntityMaster},
  MatchedEntities in 'MatchedEntities.pas' {frmMatchedEntities},
  MasterTables in 'MasterTables.pas' {frmMasterTables},
  Reports in 'Reports.pas' {frmReports};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmSync, dmSync);
  Application.CreateForm(TfrmStart, frmStart);
  //Application.CreateForm(TfrmReports, frmReports);
  //Application.CreateForm(TfrmMasterTables, frmMasterTables);
  //Application.CreateForm(TfrmMatchedEntities, frmMatchedEntities);
  //Application.CreateForm(TfrmEntityMaster, frmEntityMaster);
  //Application.CreateForm(TfrmDepositReview, frmDepositReview);
  Application.Run;
end.
