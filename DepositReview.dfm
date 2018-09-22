object frmDepositReview: TfrmDepositReview
  Left = 0
  Top = 0
  Caption = 'Deposit Review'
  ClientHeight = 861
  ClientWidth = 1484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1484
    Height = 49
    Align = alTop
    TabOrder = 0
    object cbDepositList: TcxLookupComboBox
      Left = 24
      Top = 15
      Properties.KeyFieldNames = 'DATE_TXT'
      Properties.ListColumns = <
        item
          FieldName = 'RECORD_DATE'
        end>
      Properties.ListSource = dsDepositList
      Properties.OnInitPopup = cbDepositListPropertiesInitPopup
      TabOrder = 0
      Width = 177
    end
    object cmdGetDeposit: TcxButton
      Left = 240
      Top = 13
      Width = 75
      Height = 25
      Action = actGetDeposit
      TabOrder = 1
    end
    object teDocLoc: TcxTextEdit
      Left = 424
      Top = 16
      TabOrder = 2
      Width = 705
    end
    object cxLabel1: TcxLabel
      Left = 352
      Top = 16
      Caption = 'Doc Location:'
    end
  end
  object grd: TcxGrid
    Left = 0
    Top = 49
    Width = 1484
    Height = 463
    Align = alClient
    TabOrder = 1
    object tvHdr: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellClick = tvHdrCellClick
      DataController.DataSource = dsTransHdr
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvHdrDOC_AMT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvHdrDOC_AMT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.Footer = True
      object tvHdrID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Options.Moving = False
        Width = 62
      end
      object tvHdrCOMPANY_ID: TcxGridDBColumn
        Caption = 'Company'
        DataBinding.FieldName = 'COMPANY_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'COMPANY_NAME'
          end>
        Properties.ListSource = dmSync.dsCompany
        Width = 42
      end
      object tvHdrTYPE_ID: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'TYPE_NAME'
          end>
        Properties.ListSource = dmSync.dsTypeHdr
        Width = 69
      end
      object tvHdrSTATUS_ID: TcxGridDBColumn
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
      object tvHdrCATEGORY_ID: TcxGridDBColumn
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
      object tvHdrRECORD_DATE: TcxGridDBColumn
        Caption = 'Date of Record'
        DataBinding.FieldName = 'RECORD_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        Width = 84
      end
      object tvHdrPAYOR_ID: TcxGridDBColumn
        Caption = 'Payer'
        DataBinding.FieldName = 'PAYOR_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'ENTKNOWNNAME'
          end>
        Properties.ListSource = dmSync.dsEntityLU
        Width = 198
      end
      object tvHdrDOC_AMT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'DOC_AMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 100
      end
      object tvHdrCOMMENTS: TcxGridDBColumn
        Caption = 'Comments'
        DataBinding.FieldName = 'COMMENTS'
        Width = 150
      end
      object tvHdrDOC_NUM: TcxGridDBColumn
        Caption = 'Doc Num'
        DataBinding.FieldName = 'DOC_NUM'
        Width = 75
      end
      object tvHdrDOC_ROUTE: TcxGridDBColumn
        Caption = 'Route'
        DataBinding.FieldName = 'DOC_ROUTE'
        Width = 75
      end
      object tvHdrDOC_ACCT: TcxGridDBColumn
        Caption = 'Account'
        DataBinding.FieldName = 'DOC_ACCT'
        Width = 125
      end
      object tvHdrWSUID: TcxGridDBColumn
        Caption = 'WS UID'
        DataBinding.FieldName = 'WSUID'
        Width = 50
      end
      object tvHdrLOC_KEY: TcxGridDBColumn
        Caption = 'Loc Key'
        DataBinding.FieldName = 'LOC_KEY'
        Width = 50
      end
      object tvHdrCREATE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'CREATE_DATE'
      end
      object tvHdrUPDATE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'UPDATE_DATE'
      end
      object tvHdrDOC_PATH: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_PATH'
        Visible = False
        Width = 150
      end
    end
    object tvDet: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dmSync.dsTransDet
      DataController.DetailKeyFieldNames = 'HDR_ID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvDetLINE_AMT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object tvDetID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvDetHDR_ID: TcxGridDBColumn
        DataBinding.FieldName = 'HDR_ID'
        Visible = False
      end
      object tvDetACCT_ID: TcxGridDBColumn
        Caption = 'Account'
        DataBinding.FieldName = 'ACCT_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'ACCT_NAME'
          end>
        Properties.ListSource = dmSync.dsAccount
        Width = 200
      end
      object tvDetJOB_ID: TcxGridDBColumn
        Caption = 'Job'
        DataBinding.FieldName = 'JOB_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'JOB_NAME'
          end>
        Properties.ListSource = dmSync.dsJob
        Width = 138
      end
      object tvDetPROGRAM_ID: TcxGridDBColumn
        Caption = 'Program'
        DataBinding.FieldName = 'PROGRAM_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'PROGRAM_NAME'
          end>
        Properties.ListSource = dmSync.dsProgram
        Width = 143
      end
      object tvDetLINE_AMT: TcxGridDBColumn
        Caption = 'Line Amt'
        DataBinding.FieldName = 'LINE_AMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 75
      end
      object tvDetLN_COMMENT: TcxGridDBColumn
        Caption = 'Comment'
        DataBinding.FieldName = 'LN_COMMENT'
        Width = 353
      end
      object tvDetEXEMPT_SW: TcxGridDBColumn
        Caption = 'Exempt Switch'
        DataBinding.FieldName = 'EXEMPT_SW'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'Y'
        Properties.ValueUnchecked = 'N'
        Width = 91
      end
      object tvDetBENEFICIARY_ID: TcxGridDBColumn
        DataBinding.FieldName = 'BENEFICIARY_ID'
        Visible = False
      end
      object tvDetCOVERED_START_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'COVERED_START_DATE'
        Visible = False
        Width = 64
      end
      object tvDetCOVERED_END_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'COVERED_END_DATE'
        Visible = False
        Width = 64
      end
      object tvDetWSUID: TcxGridDBColumn
        DataBinding.FieldName = 'WSUID'
        Visible = False
      end
      object tvDetLOC_KEY: TcxGridDBColumn
        Caption = 'Local Key'
        DataBinding.FieldName = 'LOC_KEY'
      end
      object tvDetCREATE_DATE: TcxGridDBColumn
        Caption = 'Create Date'
        DataBinding.FieldName = 'CREATE_DATE'
        Width = 127
      end
    end
    object lvlHdr: TcxGridLevel
      GridView = tvHdr
      object lvlDet: TcxGridLevel
        GridView = tvDet
      end
    end
  end
  object imgCheck: TImageEnView
    Left = 0
    Top = 512
    Width = 1484
    Height = 349
    Background = clBtnFace
    ParentCtl3D = False
    LegacyBitmap = True
    EnableInteractionHints = True
    Align = alBottom
    TabOrder = 2
  end
  object dsDepositList: TOraDataSource
    DataSet = dmSync.qryDepositList
    Left = 800
    Top = 32
  end
  object al: TActionList
    Left = 744
    Top = 32
    object actGetDeposit: TAction
      Caption = 'Get Deposit'
      OnExecute = actGetDepositExecute
    end
    object actFlip: TAction
      Caption = 'Flip Acct and Doc Num'
    end
  end
  object dsTransHdr: TOraDataSource
    Tag = 5
    DataSet = dmSync.rqryTransHdr
    Left = 696
    Top = 32
  end
  object pm: TPopupMenu
    Left = 1168
    Top = 8
    object FlipAcctandDocNum1: TMenuItem
      Action = actFlip
    end
  end
end
