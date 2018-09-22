object dmSync: TdmSync
  OldCreateOrder = False
  Height = 507
  Width = 948
  object ora: TOraSession
    Options.Direct = True
    Username = 'A12257C'
    Server = 'orange.maxapex.com:1555:XE'
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
    EncryptedPassword = 'BCFFBAFFB7FFB5FFCDFFC8FFC8FFCCFFC7FFB7FF'
  end
  object rtblAccout: TOraTable
    TableName = 'A12257C.TBLGENMP001'
    KeyFields = 'ID'
    KeySequence = 'SEQ_GEN_ID'
    SequenceMode = smInsert
    Session = ora
    Active = True
    IndexFieldNames = 'ID'
    Left = 144
    Top = 48
  end
  object rqryEntLU: TOraTable
    TableName = 'A12257C.QRYENTME001'
    ReadOnly = True
    Session = ora
    Active = True
    Left = 224
    Top = 112
  end
  object rtblCompany: TOraTable
    TableName = 'A12257C.TBLCOMMP001'
    KeyFields = 'ID'
    KeySequence = 'SEQ_GEN_ID'
    SequenceMode = smInsert
    Session = ora
    Active = True
    Left = 224
    Top = 48
  end
  object rqryTypeHdr: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT *'
      '  FROM TBLTYPMP001'
      '  WHERE OBJREF = '#39'TBLCNTMH001'#39)
    ReadOnly = True
    Active = True
    Left = 304
    Top = 48
  end
  object rqryCategoryHdr: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT *'
      '  FROM TBLCATMP001'
      '  WHERE OBJREF = '#39'TBLCNTMH001'#39)
    ReadOnly = True
    Active = True
    Left = 304
    Top = 112
  end
  object rqryStatusHdr: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT *'
      '  FROM TBLSTSMP001'
      '  WHERE OBJREF = '#39'TBLCNTMH001'#39)
    Active = True
    Left = 304
    Top = 176
  end
  object rtblJob: TOraTable
    TableName = 'A12257C.TBLPRJMP001'
    KeyFields = 'ID'
    KeySequence = 'SEQ_GEN_ID'
    SequenceMode = smInsert
    Session = ora
    Active = True
    Left = 144
    Top = 112
  end
  object rtblProgram: TOraTable
    TableName = 'A12257C.TBLGLXMP002'
    KeyFields = 'ID'
    KeySequence = 'SEQ_GEN_ID'
    SequenceMode = smInsert
    Session = ora
    Active = True
    Left = 144
    Top = 176
  end
  object dsAccount: TOraDataSource
    DataSet = rtblAccout
    Left = 136
    Top = 280
  end
  object dsJob: TOraDataSource
    DataSet = rtblJob
    Left = 128
    Top = 336
  end
  object dsProgram: TOraDataSource
    DataSet = rtblProgram
    Left = 128
    Top = 400
  end
  object dsCompany: TOraDataSource
    DataSet = rtblCompany
    Left = 208
    Top = 288
  end
  object dsEntityLU: TOraDataSource
    DataSet = rqryEntLU
    Left = 200
    Top = 352
  end
  object dsTypeHdr: TOraDataSource
    DataSet = rqryTypeHdr
    Left = 296
    Top = 288
  end
  object dsCategoryHdr: TOraDataSource
    DataSet = rqryCategoryHdr
    Left = 288
    Top = 352
  end
  object dsStatusHdr: TOraDataSource
    DataSet = rqryStatusHdr
    Left = 280
    Top = 408
  end
  object rTransDet: TOraTable
    TableName = 'A12257C.TBLCNTMD001'
    KeyFields = 'ID'
    KeySequence = 'SEQ_TRANS_ALL'
    SequenceMode = smInsert
    Session = ora
    FetchAll = True
    Active = True
    IndexFieldNames = 'HDR_ID'
    Left = 216
    Top = 176
  end
  object rqryTransHdr: TOraQuery
    KeyFields = 'ID'
    KeySequence = 'SEQ_TRANS_ALL'
    Session = ora
    SQL.Strings = (
      'SELECT * FROM TBLCNTMH001'
      '  where TO_CHAR(RECORD_DATE,'#39'YYYYMMDD'#39') = :Dep_Date')
    Left = 128
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'Dep_Date'
        Value = '20151227'
      end>
  end
  object dsTransDet: TOraDataSource
    DataSet = rTransDet
    Left = 200
    Top = 416
  end
  object qryDepositList: TSmartQuery
    Session = ora
    SQL.Strings = (
      'SELECT '
      '  TO_CHAR(RECORD_DATE,'#39'YYYYMMDD'#39') AS DATE_TXT,'
      '  RECORD_DATE '
      'FROM TBLCNTMH001'
      '  GROUP BY RECORD_DATE'
      '  ORDER BY RECORD_DATE DESC')
    Left = 120
    Top = 456
  end
  object qryStdLists: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT '#39'C'#39' AS SRC, '#39'Category'#39' AS Description FROM DUAL'
      'UNION'
      'SELECT '#39'T'#39' AS SRC, '#39'Type'#39' AS Description FROM DUAL'
      'UNION'
      'SELECT '#39'S'#39' AS SRC, '#39'Status'#39' AS Description FROM DUAL')
    Active = True
    Left = 368
    Top = 48
  end
  object qryAddrCategory: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT '
      '   t.ID,'
      '   t.CATEGORY_NAME AS VAR_NAME,'
      '   t.SEQ,'
      '   '#39'CAT'#39' AS SRC'
      '  FROM TBLCATMP001 t'
      '  WHERE t.OBJREF = '#39'TBLENTMS001'#39
      'ORDER BY SEQ')
    Active = True
    Left = 432
    Top = 48
  end
  object qryAddrType: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT '
      '    t.ID,'
      '    t.TYPE_NAME AS VAR_NAME,'
      '    t.SEQ,'
      '    '#39'TYP'#39' AS SRC'
      '  FROM TBLTYPMP001 t'
      '  WHERE t.OBJREF = '#39'TBLENTMS001'#39
      'ORDER BY SEQ')
    Active = True
    Left = 432
    Top = 104
  end
  object qryAddrStatus: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT '
      '   t.ID,'
      '   t.STATUS_NAME AS VAR_NAME,'
      '   t.SEQ,'
      '   '#39'STS'#39' AS SRC'
      '  FROM TBLSTSMP001 t'
      '  WHERE t.OBJREF = '#39'TBLENTMS001'#39
      '     OR t.OBJREF IS NULL'
      'ORDER BY SEQ')
    Active = True
    Left = 432
    Top = 160
  end
  object rtblCountry: TOraTable
    TableName = 'A12257C.TBLENTMS003'
    ReadOnly = True
    Session = ora
    Active = True
    Left = 424
    Top = 216
  end
  object rtblSystem: TOraTable
    TableName = 'A12257C.TBLCFGMP002'
    KeyFields = 'ID'
    KeySequence = 'CFGALLID'
    SequenceMode = smInsert
    Session = ora
    Active = True
    IndexFieldNames = 'ID'
    Left = 480
    Top = 216
  end
  object qryIdentCategory: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT '
      '   t.ID,'
      '   t.CATEGORY_NAME AS VAR_NAME,'
      '   t.SEQ,'
      '   '#39'CAT'#39' AS SRC'
      '  FROM TBLCATMP001 t'
      '  WHERE t.OBJREF = '#39'TBLENTMS004'#39
      'ORDER BY SEQ')
    Active = True
    Left = 488
    Top = 48
  end
  object qryIdentType: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT '
      '    t.ID,'
      '    t.TYPE_NAME AS VAR_NAME,'
      '    t.SEQ,'
      '    '#39'TYP'#39' AS SRC'
      '  FROM TBLTYPMP001 t'
      '  WHERE t.OBJREF = '#39'TBLENTMS004'#39
      'ORDER BY SEQ')
    Active = True
    Left = 488
    Top = 112
  end
  object qryIdentStatus: TOraQuery
    Session = ora
    SQL.Strings = (
      'SELECT '
      '   t.ID,'
      '   t.STATUS_NAME AS VAR_NAME,'
      '   t.SEQ,'
      '   '#39'STS'#39' AS SRC'
      '  FROM TBLSTSMP001 t'
      '  WHERE t.OBJREF = '#39'TBLENTMS004'#39
      '     OR t.OBJREF IS NULL'
      'ORDER BY SEQ')
    Active = True
    Left = 488
    Top = 160
  end
end
