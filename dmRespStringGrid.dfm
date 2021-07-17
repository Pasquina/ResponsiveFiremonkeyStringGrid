object dRespStringGrid: TdRespStringGrid
  OldCreateOrder = False
  Height = 508
  Width = 668
  object mtStateData: TFDMemTable
    ActiveStoredUsage = [auDesignTime]
    FieldDefs = <
      item
        Name = 'StateCode'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'StateName'
        Attributes = [faRequired]
        DataType = ftString
        Size = 48
      end
      item
        Name = 'EstPop2018'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'EstPop2019'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'Comments'
        DataType = ftString
        Size = 1024
      end>
    IndexDefs = <>
    IndexFieldNames = 'StateCode'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvBackup, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.Backup = True
    ResourceOptions.SilentMode = True
    ResourceOptions.PersistentFileName = '..\..\USPopulationEstimates.xml'
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 32
    Top = 16
  end
  object FDBatchMoveTextReader1: TFDBatchMoveTextReader
    FileName = 
      'C:\Users\VydarenyM\Dropbox\AppData\Between Virtual Machines\Blog' +
      ' Text\USPopulation.csv'
    DataDef.Fields = <
      item
        FieldName = 'SUMLEV'
        DataType = atLongInt
        FieldSize = 2
      end
      item
        FieldName = 'REGION'
        DataType = atLongInt
        FieldSize = 1
      end
      item
        FieldName = 'DIVISION'
        DataType = atLongInt
        FieldSize = 1
      end
      item
        FieldName = 'STATE'
        DataType = atLongInt
        FieldSize = 1
      end
      item
        FieldName = 'NAME'
        DataType = atString
        FieldSize = 16
      end
      item
        FieldName = 'CENSUS2010POP'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'ESTIMATESBASE2010'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2010'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2011'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2012'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2013'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2014'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2015'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2016'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2017'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2018'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'POPESTIMATE2019'
        DataType = atLongInt
        FieldSize = 9
      end
      item
        FieldName = 'NPOPCHG_2010'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'NPOPCHG_2011'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NPOPCHG_2012'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NPOPCHG_2013'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NPOPCHG_2014'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NPOPCHG_2015'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NPOPCHG_2016'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NPOPCHG_2017'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NPOPCHG_2018'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NPOPCHG_2019'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'BIRTHS2010'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'BIRTHS2011'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'BIRTHS2012'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'BIRTHS2013'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'BIRTHS2014'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'BIRTHS2015'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'BIRTHS2016'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'BIRTHS2017'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'BIRTHS2018'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'BIRTHS2019'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DEATHS2010'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'DEATHS2011'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DEATHS2012'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DEATHS2013'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DEATHS2014'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DEATHS2015'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DEATHS2016'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DEATHS2017'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DEATHS2018'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DEATHS2019'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NATURALINC2010'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'NATURALINC2011'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NATURALINC2012'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NATURALINC2013'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NATURALINC2014'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NATURALINC2015'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NATURALINC2016'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NATURALINC2017'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NATURALINC2018'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NATURALINC2019'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'INTERNATIONALMIG2010'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'INTERNATIONALMIG2011'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'INTERNATIONALMIG2012'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'INTERNATIONALMIG2013'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'INTERNATIONALMIG2014'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'INTERNATIONALMIG2015'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'INTERNATIONALMIG2016'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'INTERNATIONALMIG2017'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'INTERNATIONALMIG2018'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'INTERNATIONALMIG2019'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'DOMESTICMIG2010'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'DOMESTICMIG2011'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DOMESTICMIG2012'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DOMESTICMIG2013'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DOMESTICMIG2014'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DOMESTICMIG2015'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DOMESTICMIG2016'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DOMESTICMIG2017'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DOMESTICMIG2018'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'DOMESTICMIG2019'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NETMIG2010'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'NETMIG2011'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'NETMIG2012'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'NETMIG2013'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'NETMIG2014'
        DataType = atLongInt
        FieldSize = 6
      end
      item
        FieldName = 'NETMIG2015'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NETMIG2016'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NETMIG2017'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NETMIG2018'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'NETMIG2019'
        DataType = atLongInt
        FieldSize = 7
      end
      item
        FieldName = 'RESIDUAL2010'
        DataType = atLongInt
        FieldSize = 5
      end
      item
        FieldName = 'RESIDUAL2011'
        DataType = atLongInt
        FieldSize = 4
      end
      item
        FieldName = 'RESIDUAL2012'
        DataType = atLongInt
        FieldSize = 5
      end
      item
        FieldName = 'RESIDUAL2013'
        DataType = atLongInt
        FieldSize = 5
      end
      item
        FieldName = 'RESIDUAL2014'
        DataType = atLongInt
        FieldSize = 5
      end
      item
        FieldName = 'RESIDUAL2015'
        DataType = atLongInt
        FieldSize = 5
      end
      item
        FieldName = 'RESIDUAL2016'
        DataType = atLongInt
        FieldSize = 5
      end
      item
        FieldName = 'RESIDUAL2017'
        DataType = atLongInt
        FieldSize = 5
      end
      item
        FieldName = 'RESIDUAL2018'
        DataType = atLongInt
        FieldSize = 4
      end
      item
        FieldName = 'RESIDUAL2019'
        DataType = atLongInt
        FieldSize = 5
      end
      item
        FieldName = 'RBIRTH2011'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RBIRTH2012'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RBIRTH2013'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RBIRTH2014'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RBIRTH2015'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RBIRTH2016'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RBIRTH2017'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RBIRTH2018'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RBIRTH2019'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDEATH2011'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDEATH2012'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDEATH2013'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDEATH2014'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDEATH2015'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDEATH2016'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDEATH2017'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDEATH2018'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDEATH2019'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RNATURALINC2011'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RNATURALINC2012'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RNATURALINC2013'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RNATURALINC2014'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RNATURALINC2015'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RNATURALINC2016'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RNATURALINC2017'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RNATURALINC2018'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RNATURALINC2019'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RINTERNATIONALMIG2011'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RINTERNATIONALMIG2012'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RINTERNATIONALMIG2013'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RINTERNATIONALMIG2014'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RINTERNATIONALMIG2015'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RINTERNATIONALMIG2016'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RINTERNATIONALMIG2017'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RINTERNATIONALMIG2018'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RINTERNATIONALMIG2019'
        DataType = atFloat
        FieldSize = 11
      end
      item
        FieldName = 'RDOMESTICMIG2011'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RDOMESTICMIG2012'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RDOMESTICMIG2013'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RDOMESTICMIG2014'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RDOMESTICMIG2015'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RDOMESTICMIG2016'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RDOMESTICMIG2017'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RDOMESTICMIG2018'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RDOMESTICMIG2019'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RNETMIG2011'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RNETMIG2012'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RNETMIG2013'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RNETMIG2014'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RNETMIG2015'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RNETMIG2016'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RNETMIG2017'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RNETMIG2018'
        DataType = atFloat
        FieldSize = 12
      end
      item
        FieldName = 'RNETMIG2019'
        DataType = atFloat
        FieldSize = 12
      end>
    DataDef.Delimiter = '"'
    DataDef.Separator = ';'
    DataDef.RecordFormat = rfCustom
    DataDef.WithFieldNames = True
    Left = 208
    Top = 64
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    DataSet = mtStateData
    Left = 208
    Top = 128
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveTextReader1
    Writer = FDBatchMoveDataSetWriter1
    Mappings = <
      item
        SourceFieldName = 'STATE'
        DestinationFieldName = 'StateCode'
      end
      item
        SourceFieldName = 'NAME'
        DestinationFieldName = 'StateName'
      end
      item
        SourceFieldName = 'POPESTIMATE2018'
        DestinationFieldName = 'EstPop2018'
      end
      item
        SourceFieldName = 'POPESTIMATE2019'
        DestinationFieldName = 'EstPop2019'
      end
      item
        SourceExpression = 'null'
        DestinationFieldName = 'Comments'
      end>
    LogFileAction = laCreate
    LogFileName = 
      'C:\Users\VydarenyM\Documents\Blogs\DelphiChops\ResponsiveFiremon' +
      'keyStringGrid\Data.log'
    Left = 208
    Top = 8
  end
end
