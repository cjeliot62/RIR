object frmMasterTables: TfrmMasterTables
  Left = 0
  Top = 0
  Caption = 'Master Tables'
  ClientHeight = 614
  ClientWidth = 1064
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
    Width = 1064
    Height = 65
    Align = alTop
    TabOrder = 0
  end
  object grd: TcxGrid
    Left = 0
    Top = 65
    Width = 1064
    Height = 549
    Align = alClient
    TabOrder = 1
    object tvAccount: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsAccount
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      object tvAccountID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvAccountACCTNUM: TcxGridDBColumn
        Caption = 'Account #'
        DataBinding.FieldName = 'ACCTNUM'
        Width = 100
      end
      object tvAccountACCT_NAME: TcxGridDBColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCT_NAME'
        Width = 300
      end
      object tvAccountCATEGORY_ID: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'CATEGORY_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Category'
            FieldName = 'CATEGORY_NAME'
          end>
        Properties.ListSource = dsAcctCategory
        Width = 107
      end
      object tvAccountTYPE_ID: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Type'
            FieldName = 'TYPE_NAME'
          end>
        Properties.ListSource = dsAcctType
        Width = 83
      end
      object tvAccountSTATUS_ID: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            Caption = 'Status'
            FieldName = 'STATUS_NAME'
          end>
        Properties.ListSource = dsAcctStatus
      end
    end
    object lvlAccount: TcxGridLevel
      GridView = tvAccount
    end
  end
  object al: TActionList
    Left = 1008
    Top = 96
  end
  object dsAccount: TOraDataSource
    DataSet = dmSync.rtblAccout
    Left = 880
    Top = 24
  end
  object qryAcctCategory: TOraQuery
    Session = dmSync.ora
    SQL.Strings = (
      'SELECT * FROM TBLCATMP001 WHERE OBJREF = '#39'TBLGENMP001'#39)
    Active = True
    Left = 776
    Top = 24
  end
  object qryAcctType: TOraQuery
    Session = dmSync.ora
    SQL.Strings = (
      'SELECT * FROM TBLTYPMP001 WHERE OBJREF = '#39'TBLGENMP001'#39)
    Active = True
    Left = 776
    Top = 112
  end
  object qryAcctStatus: TOraQuery
    Session = dmSync.ora
    SQL.Strings = (
      'SELECT * FROM TBLSTSMP001 '
      'WHERE OBJREF = '#39'TBLGENMP001'#39' OR OBJREF IS NULL')
    Active = True
    Left = 768
    Top = 184
  end
  object dsAcctCategory: TOraDataSource
    DataSet = qryAcctCategory
    Left = 784
    Top = 32
  end
  object dsAcctType: TOraDataSource
    DataSet = qryAcctType
    Left = 792
    Top = 128
  end
  object dsAcctStatus: TOraDataSource
    DataSet = qryAcctStatus
    Left = 784
    Top = 200
  end
end
