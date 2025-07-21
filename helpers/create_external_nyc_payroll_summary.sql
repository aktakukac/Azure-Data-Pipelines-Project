CREATE EXTERNAL TABLE [dbo].[NYC_Payroll_Summary](
[AgencyName] [nvarchar](4000),
[FiscalYear] [bigint],
[TotalPaid] [float]
)
WITH (
LOCATION = '/dirstaging/',
DATA_SOURCE = [fs_storage_dfs_core_windows_net],
FILE_FORMAT = [SynapseDelimitedTextFormat]
)
GO