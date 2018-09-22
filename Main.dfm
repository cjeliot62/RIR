object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Read In Report'
  ClientHeight = 680
  ClientWidth = 1484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1484
    Height = 81
    Align = alTop
    TabOrder = 0
    object teDir: TcxTextEdit
      Left = 89
      Top = 10
      TabOrder = 0
      Width = 624
    end
    object cmdDir: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Action = actGetDir
      TabOrder = 1
    end
    object cbSelectFileSet: TcxLookupComboBox
      Left = 754
      Top = 10
      Properties.KeyFieldNames = 'FileName'
      Properties.ListColumns = <
        item
          FieldName = 'FileDesc'
        end>
      Properties.ListSource = dsFileList
      Properties.OnChange = cbSelectFileSetPropertiesChange
      TabOrder = 2
      Width = 257
    end
    object cxLabel1: TcxLabel
      Left = 728
      Top = 11
      Caption = 'File'
    end
    object cmdGetFiles: TcxButton
      Left = 1032
      Top = 8
      Width = 75
      Height = 25
      Action = actLoadFileSet
      TabOrder = 4
    end
    object teValue: TcxTextEdit
      Left = 754
      Top = 37
      TabOrder = 5
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 718
      Top = 38
      Caption = 'Value'
    end
    object memFB: TcxMemo
      Left = 1184
      Top = 1
      Align = alRight
      Properties.ScrollBars = ssVertical
      TabOrder = 7
      Height = 79
      Width = 299
    end
    object cmdPost: TcxButton
      Left = 1032
      Top = 40
      Width = 75
      Height = 25
      Action = actPost
      TabOrder = 8
    end
    object cmdDepositReview: TcxButton
      Left = 896
      Top = 40
      Width = 115
      Height = 25
      Action = actDepositReview
      TabOrder = 9
    end
  end
  object grd: TcxGrid
    Left = 0
    Top = 81
    Width = 1484
    Height = 599
    Align = alClient
    TabOrder = 1
    object tvHdr: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsHdr
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvHdrDocTotal
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvHdrDocTotal
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.Footer = True
      object tvHdrRecId: TcxGridDBColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object tvHdrID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Width = 40
      end
      object tvHdrCompanyID: TcxGridDBColumn
        Caption = 'Company'
        DataBinding.FieldName = 'CompanyID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'COMPANY_NAME'
          end>
        Properties.ListSource = dmSync.dsCompany
        Width = 70
      end
      object tvHdrTypeID: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TypeID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'TYPE_NAME'
          end>
        Properties.ListSource = dmSync.dsTypeHdr
        Width = 72
      end
      object tvHdrStatusID: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'StatusID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'STATUS_NAME'
          end>
        Properties.ListSource = dmSync.dsStatusHdr
        Width = 81
      end
      object tvHdrCategoryID: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'CategoryID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'CATEGORY_NAME'
          end>
        Properties.ListSource = dmSync.dsCategoryHdr
      end
      object tvHdrRecordDate: TcxGridDBColumn
        Caption = 'Record Date'
        DataBinding.FieldName = 'RecordDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 90
      end
      object tvHdrPayorID: TcxGridDBColumn
        Caption = 'Payor'
        DataBinding.FieldName = 'PayorID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'ENTKNOWNNAME'
          end>
        Properties.ListSource = dmSync.dsEntityLU
        Width = 200
      end
      object tvHdrDocTotal: TcxGridDBColumn
        Caption = 'Doc Value'
        DataBinding.FieldName = 'DocTotal'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 80
      end
      object tvHdrDocNum: TcxGridDBColumn
        Caption = 'Doc Num'
        DataBinding.FieldName = 'DocNum'
        Width = 75
      end
      object tvHdrDocRoute: TcxGridDBColumn
        Caption = 'Doc Route'
        DataBinding.FieldName = 'DocRoute'
        Width = 75
      end
      object tvHdrDocAcct: TcxGridDBColumn
        Caption = 'Doc Acct'
        DataBinding.FieldName = 'DocAcct'
        Width = 100
      end
      object tvHdrComments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
        Visible = False
      end
      object tvHdrWSUID: TcxGridDBColumn
        DataBinding.FieldName = 'WSUID'
      end
      object tvHdrLocKey: TcxGridDBColumn
        Caption = 'Local Key'
        DataBinding.FieldName = 'LocKey'
      end
      object tvHdrCreateDate: TcxGridDBColumn
        Caption = 'Create Date'
        DataBinding.FieldName = 'CreateDate'
      end
      object tvHdrDocPath: TcxGridDBColumn
        Caption = 'Path'
        DataBinding.FieldName = 'DocPath'
        Width = 245
      end
    end
    object tvDet: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsDet
      DataController.DetailKeyFieldNames = 'HdrID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvDetLineAmt
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object tvDetRecId: TcxGridDBColumn
        Caption = 'Rec Id'
        DataBinding.FieldName = 'RecId'
        Visible = False
      end
      object tvDetID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvDetHdrID: TcxGridDBColumn
        Caption = 'Hdr ID'
        DataBinding.FieldName = 'HdrID'
        Visible = False
      end
      object tvDetAcctID: TcxGridDBColumn
        Caption = 'Account'
        DataBinding.FieldName = 'AcctID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'ACCT_NAME'
          end>
        Properties.ListSource = dmSync.dsAccount
        Width = 150
      end
      object tvDetJobID: TcxGridDBColumn
        Caption = 'Job'
        DataBinding.FieldName = 'JobID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'JOB_NAME'
          end>
        Properties.ListSource = dmSync.dsJob
      end
      object tvDetProgramID: TcxGridDBColumn
        Caption = 'Program'
        DataBinding.FieldName = 'ProgramID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'PROGRAM_NAME'
          end>
        Properties.ListSource = dmSync.dsProgram
      end
      object tvDetLineAmt: TcxGridDBColumn
        Caption = 'Line Amount'
        DataBinding.FieldName = 'LineAmt'
      end
      object tvDetLineComment: TcxGridDBColumn
        Caption = 'Comment'
        DataBinding.FieldName = 'LineComment'
      end
      object tvDetExemptSW: TcxGridDBColumn
        Caption = 'Exempt'
        DataBinding.FieldName = 'ExemptSW'
      end
      object tvDetBeneficiaryID: TcxGridDBColumn
        Caption = 'Beneficiary'
        DataBinding.FieldName = 'BeneficiaryID'
        Visible = False
      end
      object tvDetCoveredStartDate: TcxGridDBColumn
        Caption = 'Covered Start Date'
        DataBinding.FieldName = 'CoveredStartDate'
        Visible = False
      end
      object tvDetCoveredEndDate: TcxGridDBColumn
        Caption = 'Covered End Date'
        DataBinding.FieldName = 'CoveredEndDate'
        Visible = False
      end
      object tvDetWSUID: TcxGridDBColumn
        Caption = 'WSU ID'
        DataBinding.FieldName = 'WSUID'
      end
      object tvDetLocKey: TcxGridDBColumn
        Caption = 'Local Key'
        DataBinding.FieldName = 'LocKey'
      end
      object tvDetCreateDate: TcxGridDBColumn
        Caption = 'Create Date'
        DataBinding.FieldName = 'CreateDate'
      end
    end
    object Hdr: TcxGridLevel
      GridView = tvHdr
      object Det: TcxGridLevel
        GridView = tvDet
      end
    end
  end
  object al: TActionList
    Left = 648
    Top = 32
    object actGetDir: TAction
      Caption = 'Get Directory'
      OnExecute = actGetDirExecute
    end
    object actLoadFileSet: TAction
      Caption = 'Load File Set'
      OnExecute = actLoadFileSetExecute
    end
    object actPost: TAction
      Caption = 'Post Data'
      OnExecute = actPostExecute
    end
    object actDepositReview: TAction
      Caption = 'Deposit Review'
      OnExecute = actDepositReviewExecute
    end
  end
  object od: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Left = 616
    Top = 32
  end
  object mdHdr: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F0F0000000400000003000300494400040000000300
      0A00436F6D70616E794944000400000003000700547970654944000400000003
      0009005374617475734944000400000003000B0043617465676F727949440008
      0000000B000B005265636F7264446174650004000000030008005061796F7249
      44001900000001000700446F634E756D001900000001000900446F63526F7574
      65001900000001000800446F634163637400FF00000001000800446F63506174
      6800000000000E000900436F6D6D656E74730004000000030006005753554944
      0004000000030007004C6F634B657900080000000B000B004372656174654461
      746500}
    SortOptions = []
    Left = 712
    Top = 312
    object mdHdrID: TIntegerField
      FieldName = 'ID'
    end
    object mdHdrCompanyID: TIntegerField
      FieldName = 'CompanyID'
    end
    object mdHdrTypeID: TIntegerField
      FieldName = 'TypeID'
    end
    object mdHdrStatusID: TIntegerField
      FieldName = 'StatusID'
    end
    object mdHdrCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object mdHdrRecordDate: TDateTimeField
      FieldName = 'RecordDate'
    end
    object mdHdrPayorID: TIntegerField
      FieldName = 'PayorID'
    end
    object mdHdrDocNum: TStringField
      FieldName = 'DocNum'
      Size = 25
    end
    object mdHdrDocRoute: TStringField
      FieldName = 'DocRoute'
      Size = 25
    end
    object mdHdrDocAcct: TStringField
      FieldName = 'DocAcct'
      Size = 25
    end
    object mdHdrDocPath: TStringField
      FieldName = 'DocPath'
      Size = 255
    end
    object mdHdrComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
    object mdHdrWSUID: TIntegerField
      FieldName = 'WSUID'
    end
    object mdHdrLocKey: TIntegerField
      FieldName = 'LocKey'
    end
    object mdHdrCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object mdHdrDocTotal: TCurrencyField
      FieldName = 'DocTotal'
    end
  end
  object dsHdr: TOraDataSource
    DataSet = mdHdr
    Left = 760
    Top = 312
  end
  object mdFileList: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 568
    Top = 40
    object mdFileListFileName: TStringField
      FieldName = 'FileName'
      Size = 80
    end
    object mdFileListFileDesc: TStringField
      FieldName = 'FileDesc'
      Size = 80
    end
    object mdFileListFileDir: TStringField
      FieldName = 'FileDir'
      Size = 255
    end
  end
  object dsFileList: TOraDataSource
    DataSet = mdFileList
    Left = 512
    Top = 40
  end
  object mdDet: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 712
    Top = 368
    object mdDetID: TIntegerField
      FieldName = 'ID'
    end
    object mdDetHdrID: TIntegerField
      FieldName = 'HdrID'
    end
    object mdDetAcctID: TIntegerField
      FieldName = 'AcctID'
    end
    object mdDetJobID: TIntegerField
      FieldName = 'JobID'
    end
    object mdDetProgramID: TIntegerField
      FieldName = 'ProgramID'
    end
    object mdDetLineAmt: TCurrencyField
      FieldName = 'LineAmt'
    end
    object mdDetLineComment: TMemoField
      FieldName = 'LineComment'
      BlobType = ftMemo
    end
    object mdDetExemptSW: TStringField
      FieldName = 'ExemptSW'
      Size = 1
    end
    object mdDetBeneficiaryID: TIntegerField
      FieldName = 'BeneficiaryID'
    end
    object mdDetCoveredStartDate: TDateField
      FieldName = 'CoveredStartDate'
    end
    object mdDetCoveredEndDate: TDateField
      FieldName = 'CoveredEndDate'
    end
    object mdDetWSUID: TIntegerField
      FieldName = 'WSUID'
    end
    object mdDetLocKey: TIntegerField
      FieldName = 'LocKey'
    end
    object mdDetCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
  end
  object dsDet: TOraDataSource
    DataSet = mdDet
    Left = 760
    Top = 368
  end
  object spHeader: TOraStoredProc
    StoredProcName = 'SPPUT_CNT_HDR'
    SQL.Strings = (
      'begin'
      
        '  SPPUT_CNT_HDR(:I_ACT_TYPE, :I_COMPANY_ID, :I_TYPE_ID, :I_STATU' +
        'S_ID, :I_CATEGORY_ID, :I_RECORD_DATE, :I_PAYOR_ID, :I_DOC_NUM, :' +
        'I_DOC_ROUTE, :I_DOC_ACCT, :I_DOC_PATH, :I_COMMENTS, :I_WSUID, :I' +
        '_LOC_KEY, :O_ID);'
      'end;')
    Left = 1072
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'I_ACT_TYPE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_COMPANY_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_TYPE_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_STATUS_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_CATEGORY_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'I_RECORD_DATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_PAYOR_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_DOC_NUM'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_DOC_ROUTE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_DOC_ACCT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_DOC_PATH'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_COMMENTS'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_WSUID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_LOC_KEY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'O_ID'
        ParamType = ptInputOutput
        Value = nil
      end>
    CommandStoredProcName = 'SPPUT_CNT_HDR'
  end
  object spDetail: TOraStoredProc
    StoredProcName = 'SPPUT_CNT_DET'
    SQL.Strings = (
      'begin'
      
        '  SPPUT_CNT_DET(:I_ACT_TYPE, :I_HDR_ID, :I_ACCT_ID, :I_JOB_ID, :' +
        'I_PROGRAM_ID, :I_LINE_AMT, :I_LN_COMMENT, :I_EXEMPT_SW, :I_BENEF' +
        'ICIARY_ID, :I_COVERED_START_DATE, :I_COVERED_END_DATE, :I_WSUID,' +
        ' :I_LOC_KEY, :O_ID);'
      'end;')
    Left = 1120
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'I_ACT_TYPE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_HDR_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_ACCT_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_JOB_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_PROGRAM_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_LINE_AMT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_LN_COMMENT'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'I_EXEMPT_SW'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_BENEFICIARY_ID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'I_COVERED_START_DATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDateTime
        Name = 'I_COVERED_END_DATE'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_WSUID'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'I_LOC_KEY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'O_ID'
        ParamType = ptInputOutput
        Value = nil
      end>
    CommandStoredProcName = 'SPPUT_CNT_DET'
  end
end
