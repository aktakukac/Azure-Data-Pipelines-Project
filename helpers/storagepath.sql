-- Storage path where the result set will persist
IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name = 'fs_storage_dfs_core_windows_net') 
  CREATE EXTERNAL DATA SOURCE [fs_storage_dfs_core_windows_net] 
  WITH (
      LOCATION = 'abfss://adlsnycpayrollmihalyg@adlsnycpayrollmihalyg.dfs.core.windows.net' 
  )
GO