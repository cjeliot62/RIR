unit SyncData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Ora, MemDS, OraSmart,
  OraCall;

type
  TdmSync = class(TDataModule)
    ora: TOraSession;
    rtblAccout: TOraTable;
    rqryEntLU: TOraTable;
    rtblCompany: TOraTable;
    rqryTypeHdr: TOraQuery;
    rqryCategoryHdr: TOraQuery;
    rqryStatusHdr: TOraQuery;
    rtblJob: TOraTable;
    rtblProgram: TOraTable;
    dsAccount: TOraDataSource;
    dsJob: TOraDataSource;
    dsProgram: TOraDataSource;
    dsCompany: TOraDataSource;
    dsEntityLU: TOraDataSource;
    dsTypeHdr: TOraDataSource;
    dsCategoryHdr: TOraDataSource;
    dsStatusHdr: TOraDataSource;
    rTransDet: TOraTable;
    rqryTransHdr: TOraQuery;
    dsTransDet: TOraDataSource;
    qryDepositList: TSmartQuery;
    qryStdLists: TOraQuery;
    qryAddrCategory: TOraQuery;
    qryAddrType: TOraQuery;
    qryAddrStatus: TOraQuery;
    rtblCountry: TOraTable;
    rtblSystem: TOraTable;
    qryIdentCategory: TOraQuery;
    qryIdentType: TOraQuery;
    qryIdentStatus: TOraQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSync: TdmSync;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
