object frmMatchedEntities: TfrmMatchedEntities
  Left = 0
  Top = 0
  Caption = 'Matched Entities'
  ClientHeight = 524
  ClientWidth = 1118
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grd: TcxGrid
    Left = 0
    Top = 0
    Width = 1118
    Height = 524
    Align = alClient
    TabOrder = 0
    object tvEntList: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = tvEntListCellClick
      DataController.DataSource = dsEntityList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      object tvEntListID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object tvEntListENTSURNAME: TcxGridDBColumn
        Caption = 'Last'
        DataBinding.FieldName = 'ENTSURNAME'
        Width = 150
      end
      object tvEntListENTMIDDLENAME: TcxGridDBColumn
        Caption = 'Middle'
        DataBinding.FieldName = 'ENTMIDDLENAME'
        Width = 50
      end
      object tvEntListENTFIRSTNAME: TcxGridDBColumn
        Caption = 'First'
        DataBinding.FieldName = 'ENTFIRSTNAME'
        Width = 150
      end
      object tvEntListENTGENQUAL: TcxGridDBColumn
        Caption = 'Gen Qual'
        DataBinding.FieldName = 'ENTGENQUAL'
        Width = 60
      end
      object tvEntListENTKNOWNNAME: TcxGridDBColumn
        Caption = 'Full Name'
        DataBinding.FieldName = 'ENTKNOWNNAME'
        Width = 250
      end
      object tvEntListENTTYPEID: TcxGridDBColumn
        Caption = 'TypeID'
        DataBinding.FieldName = 'ENTTYPEID'
        Visible = False
      end
      object tvEntListTYPE_NAME: TcxGridDBColumn
        Caption = 'Type'
        DataBinding.FieldName = 'TYPE_NAME'
        Width = 100
      end
      object tvEntListENTCATID: TcxGridDBColumn
        Caption = 'CategoryID'
        DataBinding.FieldName = 'ENTCATID'
        Visible = False
      end
      object tvEntListCATEGORY_NAME: TcxGridDBColumn
        Caption = 'Category'
        DataBinding.FieldName = 'CATEGORY_NAME'
        Width = 100
      end
      object tvEntListENTSTATUSID: TcxGridDBColumn
        Caption = 'StatusID'
        DataBinding.FieldName = 'ENTSTATUSID'
        Visible = False
      end
      object tvEntListSTATUS_NAME: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'STATUS_NAME'
        Width = 100
      end
      object tvEntListFEERATEID: TcxGridDBColumn
        Caption = 'FeeRateID'
        DataBinding.FieldName = 'FEERATEID'
        Visible = False
      end
      object tvEntListPREVID: TcxGridDBColumn
        Caption = 'Previous ID'
        DataBinding.FieldName = 'PREVID'
      end
      object tvEntListWSUID: TcxGridDBColumn
        DataBinding.FieldName = 'WSUID'
        Visible = False
      end
      object tvEntListLOC_KEY: TcxGridDBColumn
        DataBinding.FieldName = 'LOC_KEY'
        Visible = False
      end
    end
    object lvlEntList: TcxGridLevel
      GridView = tvEntList
    end
  end
  object dsEntityList: TOraDataSource
    DataSet = frmEntityMaster.spGetEntity
    Left = 984
    Top = 288
  end
end
