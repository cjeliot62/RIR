object frmReports: TfrmReports
  Left = 0
  Top = 0
  Caption = 'Reports'
  ClientHeight = 736
  ClientWidth = 1124
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
    Width = 1124
    Height = 49
    Align = alTop
    TabOrder = 0
    object selRpt_Year: TcxLookupComboBox
      Left = 412
      Top = 15
      Properties.KeyFieldNames = 'RPT_YEAR'
      Properties.ListColumns = <
        item
          FieldName = 'RPT_YEAR'
        end>
      Properties.ListSource = dsRpt_Tear
      TabOrder = 0
      Width = 101
    end
    object cxLabel1: TcxLabel
      Left = 376
      Top = 16
      Caption = 'Year:'
    end
    object cmdGetReportRecs: TcxButton
      Left = 528
      Top = 13
      Width = 97
      Height = 25
      Action = actGetRptSummary
      TabOrder = 2
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 16
      Caption = 'Company:'
    end
    object selCompany: TcxLookupComboBox
      Left = 64
      Top = 16
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = 'Company Name'
          FieldName = 'LEGAL_COMPANY_NAME'
        end>
      Properties.ListSource = dmSync.dsCompany
      TabOrder = 4
      Width = 306
    end
    object teMinAmt: TcxTextEdit
      Left = 750
      Top = 14
      TabOrder = 5
      Text = '25.00'
      Width = 51
    end
    object teMinCnt: TcxTextEdit
      Left = 880
      Top = 15
      TabOrder = 6
      Text = '3'
      Width = 41
    end
    object cxLabel3: TcxLabel
      Left = 680
      Top = 15
      Caption = 'Min Amount:'
    end
    object cxLabel4: TcxLabel
      Left = 816
      Top = 15
      Caption = 'Min Count:'
    end
    object cmdCreateReport: TcxButton
      Left = 960
      Top = 13
      Width = 89
      Height = 25
      Action = actCreateReport
      TabOrder = 9
    end
  end
  object grd: TcxGrid
    Left = 0
    Top = 49
    Width = 1124
    Height = 687
    Align = alClient
    TabOrder = 1
    object tvSummary: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSumm
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvSummaryTOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object tvSummaryCOMPANY_ID: TcxGridDBColumn
        DataBinding.FieldName = 'COMPANY_ID'
        Visible = False
      end
      object tvSummaryPAYOR_ID: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'PAYOR_ID'
        Width = 48
      end
      object tvSummaryFULLNAME: TcxGridDBColumn
        Caption = 'Name'
        DataBinding.FieldName = 'FULLNAME'
        Width = 250
      end
      object tvSummaryLAST_NAME: TcxGridDBColumn
        Caption = 'Last Name'
        DataBinding.FieldName = 'LAST_NAME'
        Width = 100
      end
      object tvSummaryTOTAL: TcxGridDBColumn
        Caption = 'Total Amount'
        DataBinding.FieldName = 'TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 100
      end
      object tvSummaryCNT: TcxGridDBColumn
        Caption = 'Num'
        DataBinding.FieldName = 'CNT'
        Width = 50
      end
      object tvSummaryFIRST_CONT_DATE: TcxGridDBColumn
        Caption = 'First Contribution Date'
        DataBinding.FieldName = 'FIRST_CONT_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 150
      end
      object tvSummaryLAST_CONT_DATE: TcxGridDBColumn
        Caption = 'Last Contribution Date'
        DataBinding.FieldName = 'LAST_CONT_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 150
      end
    end
    object tvAccount: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAcct
      DataController.DetailKeyFieldNames = 'PAYOR_ID'
      DataController.KeyFieldNames = 'PAYOR_ID'
      DataController.MasterKeyFieldNames = 'PAYOR_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvAccountTOTAL
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object tvAccountPAYOR_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PAYOR_ID'
        Visible = False
      end
      object tvAccountACCT_NAME: TcxGridDBColumn
        Caption = 'Account'
        DataBinding.FieldName = 'ACCT_NAME'
        Width = 382
      end
      object tvAccountTOTAL: TcxGridDBColumn
        Caption = 'Total Amount'
        DataBinding.FieldName = 'TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 100
      end
      object tvAccountCNT: TcxGridDBColumn
        Caption = 'Num'
        DataBinding.FieldName = 'CNT'
        Width = 50
      end
      object tvAccountFIRST_CONT_DATE: TcxGridDBColumn
        Caption = 'First Contribution Date'
        DataBinding.FieldName = 'FIRST_CONT_DATE'
        Width = 150
      end
      object tvAccountLAST_CONT_DATE: TcxGridDBColumn
        Caption = 'Last Contribution Date'
        DataBinding.FieldName = 'LAST_CONT_DATE'
        Width = 150
      end
    end
    object tvTransaction: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsTrans
      DataController.DetailKeyFieldNames = 'PAYOR_ID; ACCT_NAME'
      DataController.KeyFieldNames = 'PAYOR_ID; ACCT_NAME'
      DataController.MasterKeyFieldNames = 'PAYOR_ID; ACCT_NAME'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$,0.00;($,0.00)'
          Kind = skSum
          Column = tvTransactionLINE_AMT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object tvTransactionPAYOR_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PAYOR_ID'
        Visible = False
      end
      object tvTransactionHDR_ID: TcxGridDBColumn
        DataBinding.FieldName = 'HDR_ID'
        Visible = False
      end
      object tvTransactionH_TYPE: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'H_TYPE'
        Width = 100
      end
      object tvTransactionACCT_NAME: TcxGridDBColumn
        Caption = 'Account'
        DataBinding.FieldName = 'ACCT_NAME'
        Width = 281
      end
      object tvTransactionDOC_AMT: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_AMT'
        Visible = False
      end
      object tvTransactionACCT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'ACCT_ID'
        Visible = False
      end
      object tvTransactionLINE_AMT: TcxGridDBColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'LINE_AMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Width = 100
      end
      object tvTransactionRPT_YR: TcxGridDBColumn
        DataBinding.FieldName = 'RPT_YR'
        Visible = False
      end
      object tvTransactionDOC_NUM: TcxGridDBColumn
        Caption = 'Doc #'
        DataBinding.FieldName = 'DOC_NUM'
        Width = 50
      end
      object tvTransactionRECORD_DATE: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'RECORD_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 150
      end
    end
    object lvlSummary: TcxGridLevel
      GridView = tvSummary
      object lvlAccount: TcxGridLevel
        GridView = tvAccount
        object lvlTransaction: TcxGridLevel
          GridView = tvTransaction
        end
      end
    end
  end
  object al: TActionList
    Left = 800
    Top = 272
    object actGetRptSummary: TAction
      Caption = 'Report Records'
      OnExecute = actGetRptSummaryExecute
    end
    object actCreateReport: TAction
      Caption = 'Create Report'
    end
  end
  object qryRpt_Year: TOraQuery
    SQL.Strings = (
      'select '
      
        '  EXTRACT(YEAR FROM h.RECORD_DATE) RPT_YEAR, COUNT(h.ID) AS NUM_' +
        'RECS'
      '  from TBLCNTMH001 h'
      '  GROUP BY EXTRACT(YEAR FROM h.RECORD_DATE)')
    Left = 824
    Top = 192
  end
  object dsRpt_Tear: TOraDataSource
    DataSet = qryRpt_Year
    Left = 840
    Top = 200
  end
  object spSumm: TOraStoredProc
    StoredProcName = 'SPGETRPTDATA'
    Session = dmSync.ora
    SQL.Strings = (
      'begin'
      
        '  SPGETRPTDATA(:I_TYPE, :I_COMPANY, :I_YEAR, :I_LOW_AMT, :I_LOW_' +
        'CNT, :O_CURSOR);'
      'end;')
    Left = 944
    Top = 120
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'I_TYPE'
        ParamType = ptInput
        Value = 'S'
      end
      item
        DataType = ftFloat
        Name = 'I_COMPANY'
        ParamType = ptInput
        Value = 2041.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'I_YEAR'
        ParamType = ptInput
        Value = 2015.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'I_LOW_AMT'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'I_LOW_CNT'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftCursor
        Name = 'O_CURSOR'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'SPGETRPTDATA'
  end
  object spAcct: TOraStoredProc
    StoredProcName = 'SPGETRPTDATA'
    Session = dmSync.ora
    SQL.Strings = (
      'begin'
      
        '  SPGETRPTDATA(:I_TYPE, :I_COMPANY, :I_YEAR, :I_LOW_AMT, :I_LOW_' +
        'CNT, :O_CURSOR);'
      'end;')
    Left = 936
    Top = 184
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'I_TYPE'
        ParamType = ptInput
        Value = 'A'
      end
      item
        DataType = ftFloat
        Name = 'I_COMPANY'
        ParamType = ptInput
        Value = 2041.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'I_YEAR'
        ParamType = ptInput
        Value = 2015.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'I_LOW_AMT'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'I_LOW_CNT'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftCursor
        Name = 'O_CURSOR'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'SPGETRPTDATA'
  end
  object spTrans: TOraStoredProc
    StoredProcName = 'SPGETRPTDATA'
    Session = dmSync.ora
    SQL.Strings = (
      'begin'
      
        '  SPGETRPTDATA(:I_TYPE, :I_COMPANY, :I_YEAR, :I_LOW_AMT, :I_LOW_' +
        'CNT, :O_CURSOR);'
      'end;')
    Left = 944
    Top = 248
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'I_TYPE'
        ParamType = ptInput
        Value = 'T'
      end
      item
        DataType = ftFloat
        Name = 'I_COMPANY'
        ParamType = ptInput
        Value = 2041.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'I_YEAR'
        ParamType = ptInput
        Value = 2015.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'I_LOW_AMT'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftFloat
        Name = 'I_LOW_CNT'
        ParamType = ptInput
        Value = nil
        HasDefault = True
      end
      item
        DataType = ftCursor
        Name = 'O_CURSOR'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'SPGETRPTDATA'
  end
  object dsSumm: TOraDataSource
    Tag = 5
    DataSet = spSumm
    Left = 960
    Top = 128
  end
  object dsAcct: TOraDataSource
    Tag = 5
    DataSet = spAcct
    Left = 944
    Top = 200
  end
  object dsTrans: TOraDataSource
    Tag = 5
    DataSet = spTrans
    Left = 952
    Top = 256
  end
end
