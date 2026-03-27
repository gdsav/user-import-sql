insert into dbo.PERMISSION (PermissionID, PermissionName, PermissionDescription, HigherPermissionID)
values
    (1,'Language Department', 'The Language Department',NULL),
    (2,'Russian Department', 'The Russian Language Program',1),
    (3,'Russian 101', 'Introductory Russian Language',2),
    (4,'Russian 201', 'Intermediate Russian Language',2),
    (5,'Russian 301', 'Advanced Russian Language',2),
    (6,'Russian Culture', 'Russian Cultural Studies',2),
    (7,'Slavic Linguistics', 'The Study of Slavic Languages',2),
    (8,'French Department', 'The French Language Program',1),
    (9,'French 101', 'Introductory French Language',8),
    (10,'French 201', 'Intermediate French Language',8),
    (11,'French 301', 'Advanced French Language',8),
    (12,'French Culture', 'French Cultural Studies',8),
    (13,'Romance Linguistics', 'The Study of Romance Languages',8),
    (14,'Mathematics Department', 'The Mathematics Department',NULL),
    (15,'Math 101', 'Introductory Mathematics',14),
    (16,'Math 201', 'Intermediate Mathematics',14),
    (17,'Math 301', 'Advanced Mathematics',14)

;
