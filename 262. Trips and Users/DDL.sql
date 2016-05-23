

CREATE TABLE Trips
    (`Id` int, `Client_Id` int, `Driver_Id` int, `City_Id` int, `Status` varchar(19), `Request_at` datetime)
GO
    
INSERT INTO Trips
    (`Id`, `Client_Id`, `Driver_Id`, `City_Id`, `Status`, `Request_at`)
VALUES
    (1, 1, 10, 1, 'completed', '2013-10-01 00:00:00'),
    (2, 2, 11, 1, 'cancelled_by_driver', '2013-10-01 00:00:00'),
    (3, 3, 12, 6, 'completed', '2013-10-01 00:00:00'),
    (4, 4, 13, 6, 'cancelled_by_client', '2013-10-01 00:00:00'),
    (5, 1, 10, 1, 'completed', '2013-10-02 00:00:00'),
    (6, 2, 11, 6, 'completed', '2013-10-02 00:00:00'),
    (7, 3, 12, 6, 'completed', '2013-10-02 00:00:00'),
    (8, 2, 12, 12, 'completed', '2013-10-03 00:00:00'),
    (9, 3, 10, 12, 'completed', '2013-10-03 00:00:00'),
    (10, 4, 13, 12, 'cancelled_by_driver', '2013-10-03 00:00:00')
GO


CREATE TABLE Users
    (`Users_Id` int, `Banned` varchar(3), `Role` varchar(6))
GO
    
INSERT INTO Users
    (`Users_Id`, `Banned`, `Role`)
VALUES
    (1, 'No', 'client'),
    (2, 'Yes', 'client'),
    (3, 'No', 'client'),
    (4, 'No', 'client'),
    (10, 'No', 'driver'),
    (11, 'No', 'driver'),
    (12, 'No', 'driver'),
    (13, 'No', 'driver')
GO
