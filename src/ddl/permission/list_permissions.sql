WITH RecursivePermissions AS
(
    -- Anchor: top-level permissions
    SELECT 
        PermissionID,
        PermissionName,
        PermissionDescription,
        HigherPermissionID,
        0 AS PermissionLevel,
        CAST(PermissionName AS nvarchar(max)) AS PermissionPath
    FROM dbo.PERMISSION
    WHERE HigherPermissionID IS NULL

    UNION ALL

    -- Recursive: children of already-found permissions
    SELECT
        p.PermissionID,
        p.PermissionName,
        p.PermissionDescription,
        p.HigherPermissionID,
        rp.PermissionLevel + 1,
        rp.PermissionPath + N' > ' + p.PermissionName AS PermissionPath
    FROM dbo.PERMISSION AS p
    INNER JOIN RecursivePermissions AS rp
        ON p.HigherPermissionID = rp.PermissionID
)
SELECT
    PermissionID,
    PermissionName,
    PermissionDescription,
    HigherPermissionID,
    PermissionLevel,
    PermissionPath
FROM RecursivePermissions WHERE PermissionLevel > 0
ORDER BY PermissionPath, PermissionLevel;