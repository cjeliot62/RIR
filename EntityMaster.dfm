object frmEntityMaster: TfrmEntityMaster
  Left = 0
  Top = 0
  Caption = 'Entity Master'
  ClientHeight = 583
  ClientWidth = 1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSearch: TPanel
    Left = 0
    Top = 0
    Width = 1099
    Height = 65
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Search'
    TabOrder = 0
    VerticalAlignment = taAlignTop
    object gbAttrib: TGroupBox
      Left = 368
      Top = 6
      Width = 585
      Height = 50
      Caption = 'by Attribute'
      TabOrder = 0
      object cxLabel1: TcxLabel
        Left = 20
        Top = 19
        Caption = 'Attribute List:'
      end
      object cxLabel2: TcxLabel
        Left = 242
        Top = 19
        Caption = 'Value:'
      end
      object selList: TcxLookupComboBox
        Left = 96
        Top = 17
        Properties.KeyFieldNames = 'SRC'
        Properties.ListColumns = <
          item
            Caption = 'Attribute List'
            FieldName = 'DESCRIPTION'
          end>
        Properties.ListSource = dsStdLists
        Properties.OnChange = selListPropertiesChange
        TabOrder = 2
        Width = 137
      end
      object selListValue: TcxLookupComboBox
        Left = 288
        Top = 17
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Description'
            FieldName = 'VAR_NAME'
          end>
        Properties.ListSource = dsGetStdList
        TabOrder = 3
        Width = 145
      end
      object cmdAttrib: TcxButton
        Left = 439
        Top = 15
        Width = 23
        Height = 25
        Action = actFindByAttib
        TabOrder = 4
      end
      object selNegate: TcxCheckBox
        Left = 477
        Top = 17
        Caption = 'Negate'
        Properties.ValueChecked = 'N'
        Properties.ValueUnchecked = 'Y'
        TabOrder = 5
      end
    end
    object selName: TcxTextEdit
      Left = 65
      Top = 23
      TabOrder = 1
      Width = 136
    end
    object cxLabel3: TcxLabel
      Left = 24
      Top = 24
      Caption = 'Name:'
    end
    object cxLabel4: TcxLabel
      Left = 247
      Top = 24
      Caption = 'ID:'
    end
    object selID: TcxSpinEdit
      Left = 272
      Top = 23
      TabOrder = 4
      Width = 58
    end
    object cmdName: TcxButton
      Left = 207
      Top = 21
      Width = 29
      Height = 25
      Action = actFindByName
      TabOrder = 5
    end
    object cmdID: TcxButton
      Left = 336
      Top = 21
      Width = 25
      Height = 25
      Action = actFindByID
      TabOrder = 6
    end
    object cmdUpdateHeaders: TcxButton
      Left = 992
      Top = 16
      Width = 91
      Height = 25
      Action = actUpdateHeaders
      TabOrder = 7
    end
  end
  object pnlEntity: TPanel
    Left = 0
    Top = 65
    Width = 1099
    Height = 111
    Align = alClient
    Alignment = taLeftJustify
    Caption = 'Entiry'
    TabOrder = 1
    VerticalAlignment = taAlignTop
    object cxDBNavigator1: TcxDBNavigator
      Left = 24
      Top = 72
      Width = 270
      Height = 25
      Buttons.CustomButtons = <>
      DataSource = dsEntity
      TabOrder = 0
    end
    object teLast: TcxDBTextEdit
      Left = 417
      Top = 22
      DataBinding.DataField = 'ENTSURNAME'
      DataBinding.DataSource = dsEntity
      TabOrder = 1
      Width = 121
    end
    object teKnownName: TcxDBTextEdit
      Left = 574
      Top = 22
      DataBinding.DataField = 'ENTKNOWNNAME'
      DataBinding.DataSource = dsEntity
      TabOrder = 2
      Width = 297
    end
    object cxLabel5: TcxLabel
      Left = 21
      Top = 23
      Caption = 'First:'
    end
    object cxLabel7: TcxLabel
      Left = 383
      Top = 23
      Caption = 'Last:'
    end
    object cxLabel8: TcxLabel
      Left = 544
      Top = 23
      Caption = 'Full:'
    end
    object cxLabel9: TcxLabel
      Left = 896
      Top = 23
      Caption = 'Previous ID:'
    end
    object cxLabel10: TcxLabel
      Left = 357
      Top = 57
      Caption = 'Category:'
    end
    object cxLabel11: TcxLabel
      Left = 586
      Top = 56
      Caption = 'Type:'
    end
    object cxLabel12: TcxLabel
      Left = 800
      Top = 56
      Caption = 'Status:'
    end
    object tePreviousID: TcxDBTextEdit
      Left = 965
      Top = 22
      DataBinding.DataField = 'PREVID'
      DataBinding.DataSource = dsEntity
      TabOrder = 10
      Width = 89
    end
    object cbEntCategory: TcxDBLookupComboBox
      Left = 416
      Top = 55
      DataBinding.DataField = 'ENTCATID'
      DataBinding.DataSource = dsEntity
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = 'Category'
          FieldName = 'VAR_NAME'
        end>
      Properties.ListSource = dsEntCategory
      TabOrder = 11
      Width = 145
    end
    object cbEntType: TcxDBLookupComboBox
      Left = 624
      Top = 55
      DataBinding.DataField = 'ENTTYPEID'
      DataBinding.DataSource = dsEntity
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = 'Type'
          FieldName = 'VAR_NAME'
        end>
      Properties.ListSource = dsEntType
      TabOrder = 12
      Width = 145
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 845
      Top = 55
      DataBinding.DataField = 'ENTSTATUSID'
      DataBinding.DataSource = dsEntity
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = 'Status'
          FieldName = 'VAR_NAME'
        end>
      Properties.ListSource = dsEntStatus
      TabOrder = 13
      Width = 145
    end
  end
  object grd: TcxGrid
    Left = 0
    Top = 176
    Width = 1099
    Height = 407
    Align = alBottom
    TabOrder = 2
    RootLevelOptions.DetailTabsPosition = dtpTop
    object tvContributions: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsContHdr
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvContributionsDOC_AMT
        end
        item
          Kind = skCount
          Column = tvContributionsCOMPANY_ID
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvContributionsDOC_AMT
        end
        item
          Kind = skCount
          Column = tvContributionsCOMPANY_ID
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.Footer = True
      object tvContributionsID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvContributionsCOMPANY_ID: TcxGridDBColumn
        Caption = 'Company'
        DataBinding.FieldName = 'COMPANY_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'COMPANY_NAME'
          end>
        Properties.ListSource = dmSync.dsCompany
      end
      object tvContributionsRECORD_DATE: TcxGridDBColumn
        Caption = 'Date of Record'
        DataBinding.FieldName = 'RECORD_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        DateTimeGrouping = dtgByYear
      end
      object tvContributionsDOC_AMT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'DOC_AMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tvContributionsTYPE_ID: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'TYPE_NAME'
          end>
        Properties.ListSource = dmSync.dsTypeHdr
      end
      object tvContributionsSTATUS_ID: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'STATUS_NAME'
          end>
        Properties.ListSource = dmSync.dsStatusHdr
      end
      object tvContributionsCATEGORY_ID: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'CATEGORY_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'CATEGORY_NAME'
          end>
        Properties.ListSource = dmSync.dsCategoryHdr
      end
      object tvContributionsPAYOR_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PAYOR_ID'
        Visible = False
      end
      object tvContributionsDOC_NUM: TcxGridDBColumn
        Caption = 'Document #'
        DataBinding.FieldName = 'DOC_NUM'
        Width = 100
      end
      object tvContributionsDOC_ROUTE: TcxGridDBColumn
        Caption = 'Document Route'
        DataBinding.FieldName = 'DOC_ROUTE'
        Width = 125
      end
      object tvContributionsDOC_ACCT: TcxGridDBColumn
        Caption = 'Document Account'
        DataBinding.FieldName = 'DOC_ACCT'
        Width = 150
      end
      object tvContributionsDOC_PATH: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_PATH'
        Visible = False
        Width = 200
      end
      object tvContributionsCOMMENTS: TcxGridDBColumn
        Caption = 'Comments'
        DataBinding.FieldName = 'COMMENTS'
        Width = 150
      end
      object tvContributionsWSUID: TcxGridDBColumn
        DataBinding.FieldName = 'WSUID'
        Visible = False
      end
      object tvContributionsLOC_KEY: TcxGridDBColumn
        DataBinding.FieldName = 'LOC_KEY'
        Visible = False
      end
      object tvContributionsCREATE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'CREATE_DATE'
        Visible = False
      end
      object tvContributionsUPDATE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'UPDATE_DATE'
        Visible = False
      end
    end
    object tvContDet: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsContDet
      DataController.DetailKeyFieldNames = 'HDR_ID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvContDetLINE_AMT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object tvContDetID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvContDetHDR_ID: TcxGridDBColumn
        DataBinding.FieldName = 'HDR_ID'
        Visible = False
      end
      object tvContDetACCT_ID: TcxGridDBColumn
        Caption = 'Account'
        DataBinding.FieldName = 'ACCT_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Account'
            FieldName = 'ACCT_NAME'
          end>
        Properties.ListSource = dmSync.dsAccount
        Width = 200
      end
      object tvContDetJOB_ID: TcxGridDBColumn
        Caption = 'Job'
        DataBinding.FieldName = 'JOB_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Job'
            FieldName = 'JOB_NAME'
          end>
        Properties.ListSource = dmSync.dsJob
        Width = 100
      end
      object tvContDetPROGRAM_ID: TcxGridDBColumn
        Caption = 'Program'
        DataBinding.FieldName = 'PROGRAM_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'PROGRAM_NAME'
          end>
        Properties.ListSource = dmSync.dsProgram
      end
      object tvContDetLINE_AMT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'LINE_AMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
      end
      object tvContDetLN_COMMENT: TcxGridDBColumn
        Caption = 'Comment'
        DataBinding.FieldName = 'LN_COMMENT'
        Width = 125
      end
      object tvContDetEXEMPT_SW: TcxGridDBColumn
        Caption = 'Exempt'
        DataBinding.FieldName = 'EXEMPT_SW'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
      end
      object tvContDetBENEFICIARY_ID: TcxGridDBColumn
        DataBinding.FieldName = 'BENEFICIARY_ID'
        Visible = False
      end
      object tvContDetCOVERED_START_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'COVERED_START_DATE'
        Visible = False
      end
      object tvContDetCOVERED_END_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'COVERED_END_DATE'
        Visible = False
      end
      object tvContDetWSUID: TcxGridDBColumn
        DataBinding.FieldName = 'WSUID'
        Visible = False
      end
      object tvContDetLOC_KEY: TcxGridDBColumn
        DataBinding.FieldName = 'LOC_KEY'
        Visible = False
      end
      object tvContDetCREATE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'CREATE_DATE'
        Visible = False
      end
    end
    object tvAddress: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsEntAddress
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.GroupByBox = False
      object tvAddressID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvAddressENTID: TcxGridDBColumn
        DataBinding.FieldName = 'ENTID'
        Visible = False
      end
      object tvAddressADDR1: TcxGridDBColumn
        Caption = 'Address 1'
        DataBinding.FieldName = 'ADDR1'
        Width = 200
      end
      object tvAddressADDR2: TcxGridDBColumn
        Caption = 'Address 2'
        DataBinding.FieldName = 'ADDR2'
        Width = 150
      end
      object tvAddressCITY: TcxGridDBColumn
        Caption = 'City'
        DataBinding.FieldName = 'CITY'
        Width = 150
      end
      object tvAddressSTATEPROV: TcxGridDBColumn
        Caption = 'State'
        DataBinding.FieldName = 'STATEPROV'
        Width = 50
      end
      object tvAddressPOSTALCODE: TcxGridDBColumn
        Caption = 'Postal Code'
        DataBinding.FieldName = 'POSTALCODE'
        Width = 75
      end
      object tvAddressCATEGORYID: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'CATEGORYID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Category'
            FieldName = 'VAR_NAME'
          end>
        Properties.ListSource = dsAddrCategory
        Width = 100
      end
      object tvAddressTYPEID: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPEID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Type'
            FieldName = 'VAR_NAME'
          end>
        Properties.ListSource = dsAddrType
        Width = 100
      end
      object tvAddressSTATUSID: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUSID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Status'
            FieldName = 'VAR_NAME'
          end>
        Properties.ListSource = dsAddrStatus
      end
      object tvAddressCOUNTRYID: TcxGridDBColumn
        Caption = 'Country'
        DataBinding.FieldName = 'COUNTRYID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Country'
            FieldName = 'ISOCD'
          end>
        Properties.ListSource = dsCountry
      end
    end
    object tvEntIdentities: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsEntIdentity
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.GroupByBox = False
      object tvEntIdentitiesID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvEntIdentitiesENTITY_ID: TcxGridDBColumn
        DataBinding.FieldName = 'ENTITY_ID'
        Visible = False
      end
      object tvEntIdentitiesSYSTEM_ID: TcxGridDBColumn
        Caption = 'System'
        DataBinding.FieldName = 'SYSTEM_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'SYSTEM_NAME'
          end>
        Properties.ListSource = dsSystem
        Width = 200
      end
      object tvEntIdentitiesKEYSEG_1: TcxGridDBColumn
        Caption = 'Key Segment 1'
        DataBinding.FieldName = 'KEYSEG_1'
        Width = 125
      end
      object tvEntIdentitiesKEYSEG_2: TcxGridDBColumn
        Caption = 'Key Segment 2'
        DataBinding.FieldName = 'KEYSEG_2'
        Width = 125
      end
      object tvEntIdentitiesKEYSEG_3: TcxGridDBColumn
        Caption = 'Key Segment 3'
        DataBinding.FieldName = 'KEYSEG_3'
        Width = 125
      end
      object tvEntIdentitiesTYPE_ID: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Type'
            FieldName = 'VAR_NAME'
          end>
        Properties.ListSource = dsIdentType
        Width = 100
      end
      object tvEntIdentitiesSTATUS_ID: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Status'
            FieldName = 'VAR_NAME'
          end>
        Properties.ListSource = dsIdentStatus
        Width = 100
      end
      object tvEntIdentitiesCATEGORY_ID: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'CATEGORY_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Category'
            FieldName = 'VAR_NAME'
          end>
        Properties.ListSource = dsIdentCategory
        Width = 100
      end
      object tvEntIdentitiesWSUID: TcxGridDBColumn
        DataBinding.FieldName = 'WSUID'
        Visible = False
      end
      object tvEntIdentitiesLOC_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LOC_ID'
        Visible = False
      end
      object tvEntIdentitiesCREATETIME: TcxGridDBColumn
        DataBinding.FieldName = 'CREATETIME'
        Visible = False
      end
    end
    object lvlContributions: TcxGridLevel
      Caption = 'Contributions'
      GridView = tvContributions
      object lvlCOntDet: TcxGridLevel
        GridView = tvContDet
      end
    end
    object lvlAddress: TcxGridLevel
      Caption = 'Address'
      GridView = tvAddress
    end
    object lvlEntIdentities: TcxGridLevel
      Caption = 'Identities'
      GridView = tvEntIdentities
    end
  end
  object teFirstName: TcxDBTextEdit
    Left = 56
    Top = 87
    DataBinding.DataField = 'ENTFIRSTNAME'
    DataBinding.DataSource = dsEntity
    TabOrder = 3
    Width = 121
  end
  object teMiddle: TcxDBTextEdit
    Left = 247
    Top = 87
    DataBinding.DataField = 'ENTMIDDLENAME'
    DataBinding.DataSource = dsEntity
    TabOrder = 4
    Width = 121
  end
  object cxLabel6: TcxLabel
    Left = 203
    Top = 88
    Caption = 'Middle:'
  end
  object tblEntity: TOraTable
    TableName = 'A12257C.TBLENTMP001'
    KeyFields = 'ID'
    KeySequence = 'SEQ_GEN_ID'
    SequenceMode = smInsert
    Session = dmSync.ora
    Left = 944
    Top = 104
  end
  object al: TActionList
    Images = frmStart.il
    Left = 1000
    Top = 104
    object actGetEntity: TAction
      Caption = 'Get Entity'
      OnExecute = actGetEntityExecute
    end
    object actGetEntityList: TAction
      Caption = 'Get Entity List'
    end
    object actFilterList: TAction
      Caption = 'Filter List'
      OnExecute = actFilterListExecute
    end
    object actFindByName: TAction
      Category = 'Find'
      ImageIndex = 0
      OnExecute = actFindByNameExecute
    end
    object actFindByID: TAction
      Category = 'Find'
      ImageIndex = 0
      OnExecute = actFindByIDExecute
    end
    object actFindByAttib: TAction
      Category = 'Find'
      ImageIndex = 0
      OnExecute = actFindByAttibExecute
    end
    object actEvalEntityList: TAction
      Category = 'Find'
      Caption = 'Eval Entity List'
      OnExecute = actEvalEntityListExecute
    end
    object actUpdateHeaders: TAction
      Caption = 'Update Headers'
      OnExecute = actUpdateHeadersExecute
    end
  end
  object spGetEntity: TOraStoredProc
    StoredProcName = 'SPGET_MATCH_ENTITY'
    Session = dmSync.ora
    SQL.Strings = (
      'begin'
      
        '  SPGET_MATCH_ENTITY(:I_TYPE, :I_STEXT, :I_KEY, :I_NEGATE, :O_CU' +
        'RSOR);'
      'end;')
    FetchAll = True
    Left = 976
    Top = 168
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'I_TYPE'
        ParamType = ptInput
        Value = 'N'
      end
      item
        DataType = ftString
        Name = 'I_STEXT'
        ParamType = ptInput
        Value = 'Cory'
      end
      item
        DataType = ftFloat
        Name = 'I_KEY'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFixedChar
        Name = 'I_NEGATE'
        ParamType = ptInputOutput
        Value = 'N'
      end
      item
        DataType = ftCursor
        Name = 'O_CURSOR'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'SPGET_MATCH_ENTITY'
  end
  object qrySelList: TOraQuery
    Session = dmSync.ora
    Left = 952
    Top = 24
  end
  object spGetStdLists: TOraStoredProc
    StoredProcName = 'SPGET_OBJ_STD_LISTS'
    Session = dmSync.ora
    SQL.Strings = (
      'begin'
      '  SPGET_OBJ_STD_LISTS(:I_OBJ, :O_CURSOR);'
      'end;')
    FetchAll = True
    Left = 1000
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'I_OBJ'
        ParamType = ptInput
        Value = 'TBLENTMP001'
      end
      item
        DataType = ftCursor
        Name = 'O_CURSOR'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'SPGET_OBJ_STD_LISTS'
  end
  object dsStdLists: TOraDataSource
    DataSet = dmSync.qryStdLists
    Left = 968
    Top = 32
  end
  object dsEntity: TOraDataSource
    Tag = 5
    DataSet = tblEntity
    Left = 952
    Top = 113
  end
  object dsGetStdList: TOraDataSource
    DataSet = spGetStdLists
    Left = 1016
    Top = 248
  end
  object qryEntType: TOraQuery
    Session = dmSync.ora
    SQL.Strings = (
      'SELECT '
      '    t.ID,'
      '    t.TYPE_NAME AS VAR_NAME,'
      '    t.SEQ,'
      '    '#39'TYP'#39' AS SRC'
      '  FROM TBLTYPMP001 t'
      '  WHERE t.OBJREF = '#39'TBLENTMP001'#39
      'ORDER BY SEQ')
    Left = 768
    Top = 337
  end
  object qryEntStatus: TOraQuery
    Session = dmSync.ora
    SQL.Strings = (
      'SELECT '
      '   t.ID,'
      '   t.STATUS_NAME AS VAR_NAME,'
      '   t.SEQ,'
      '   '#39'STS'#39' AS SRC'
      '  FROM TBLSTSMP001 t'
      '  WHERE t.OBJREF = '#39'TBLENTMP001'#39
      '     OR t.OBJREF IS NULL'
      'ORDER BY SEQ')
    Left = 928
    Top = 273
  end
  object qryEntCategory: TOraQuery
    Session = dmSync.ora
    SQL.Strings = (
      'SELECT '
      '   t.ID,'
      '   t.CATEGORY_NAME AS VAR_NAME,'
      '   t.SEQ,'
      '   '#39'CAT'#39' AS SRC'
      '  FROM TBLCATMP001 t'
      '  WHERE t.OBJREF = '#39'TBLENTMP001'#39
      'ORDER BY SEQ')
    Left = 992
    Top = 297
  end
  object dsEntType: TOraDataSource
    DataSet = qryEntType
    Left = 744
    Top = 321
  end
  object dsEntStatus: TOraDataSource
    DataSet = qryEntStatus
    Left = 944
    Top = 281
  end
  object dsEntCategory: TOraDataSource
    DataSet = qryEntCategory
    Left = 1000
    Top = 305
  end
  object tblContHdr: TOraTable
    TableName = 'A12257C.TBLCNTMH001'
    MasterFields = 'ID'
    DetailFields = 'PAYOR_ID'
    MasterSource = dsEntity
    KeyFields = 'ID'
    KeySequence = 'SEQ_TRANS_ALL'
    SequenceMode = smInsert
    Session = dmSync.ora
    IndexFieldNames = 'PAYOR_ID; RECORD_DATE'
    Left = 840
    Top = 328
  end
  object dsContHdr: TOraDataSource
    DataSet = tblContHdr
    Left = 856
    Top = 336
  end
  object tblContDet: TOraTable
    TableName = 'A12257C.TBLCNTMD001'
    MasterFields = 'ID'
    MasterSource = dsContHdr
    KeyFields = 'ID'
    KeySequence = 'SEQ_TRANS_ALL'
    SequenceMode = smInsert
    Session = dmSync.ora
    FetchAll = True
    IndexFieldNames = 'HDR_ID'
    Left = 904
    Top = 352
  end
  object dsContDet: TOraDataSource
    Tag = 5
    DataSet = tblContDet
    Left = 992
    Top = 368
  end
  object tblEntAddress: TOraTable
    TableName = 'A12257C.TBLENTMS001'
    MasterFields = 'ID'
    DetailFields = 'ENTID'
    MasterSource = dsEntity
    KeyFields = 'ID'
    KeySequence = 'SEQ_GEN_ID'
    SequenceMode = smInsert
    Session = dmSync.ora
    IndexFieldNames = 'ENTID'
    Left = 72
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        Value = nil
      end>
  end
  object dsEntAddress: TOraDataSource
    Tag = 5
    DataSet = tblEntAddress
    Left = 72
    Top = 368
  end
  object dsAddrCategory: TOraDataSource
    DataSet = dmSync.qryAddrCategory
    Left = 72
    Top = 400
  end
  object dsAddrType: TOraDataSource
    DataSet = dmSync.qryAddrType
    Left = 72
    Top = 440
  end
  object dsAddrStatus: TOraDataSource
    DataSet = dmSync.qryAddrStatus
    Left = 72
    Top = 480
  end
  object dsCountry: TOraDataSource
    DataSet = dmSync.rtblCountry
    Left = 72
    Top = 520
  end
  object tblEntIdentity: TOraTable
    TableName = 'A12257C.TBLENTMS004'
    MasterFields = 'ID'
    DetailFields = 'ENTITY_ID'
    MasterSource = dsEntity
    KeyFields = 'ID'
    KeySequence = 'SEQ_GEN_ID'
    Session = dmSync.ora
    Left = 152
    Top = 320
  end
  object dsEntIdentity: TOraDataSource
    DataSet = tblEntIdentity
    Left = 152
    Top = 360
  end
  object dsSystem: TOraDataSource
    DataSet = dmSync.rtblSystem
    Left = 144
    Top = 408
  end
  object dsIdentType: TOraDataSource
    DataSet = dmSync.qryIdentType
    Left = 144
    Top = 456
  end
  object dsIdentCategory: TOraDataSource
    DataSet = dmSync.qryIdentCategory
    Left = 152
    Top = 496
  end
  object dsIdentStatus: TOraDataSource
    DataSet = dmSync.qryIdentStatus
    Left = 160
    Top = 520
  end
  object spUpdateCntHdr: TOraStoredProc
    StoredProcName = 'SPUPD_CNT_HDR'
    Session = dmSync.ora
    SQL.Strings = (
      'begin'
      '  SPUPD_CNT_HDR;'
      'end;')
    Left = 1040
    Top = 121
    CommandStoredProcName = 'SPUPD_CNT_HDR'
  end
end
