USE xymondb;
GO

IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
    WHERE object_id = OBJECT_ID('dbo.clientlog_tcp_connections')
      AND name = 'IX_clientlog_tcp_connections_import_date'
)
    CREATE INDEX IX_clientlog_tcp_connections_import_date
    ON dbo.clientlog_tcp_connections (date_created, clientlog_id);
GO

IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
    WHERE object_id = OBJECT_ID('dbo.clientlog')
      AND name = 'IX_clientlog_import_date'
)
    CREATE INDEX IX_clientlog_import_date
    ON dbo.clientlog (date_updated);
GO

IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
    WHERE object_id = OBJECT_ID('dbo.clientlog_network')
      AND name = 'IX_clientlog_network_import_date'
)
    CREATE INDEX IX_clientlog_network_import_date
    ON dbo.clientlog_network (date_created, clientlog_id);
GO

IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
    WHERE object_id = OBJECT_ID('dbo.clientlog_ports')
      AND name = 'IX_clientlog_ports_import_date'
)
    CREATE INDEX IX_clientlog_ports_import_date
    ON dbo.clientlog_ports (date_created, clientlog_id);
GO