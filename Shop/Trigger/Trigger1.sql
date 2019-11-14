CREATE TRIGGER Create_Logs
ON Operations
AFTER INSERT 
AS
INSERT INTO Logs (Datatime,[Message])
SELECT Datatime, IIF(Price>0, N'доход = ', N'расход = ') + CAST ( Price AS VARCHAR(20) )  
FROM INSERTED