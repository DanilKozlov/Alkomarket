CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Danya'

use master;

create certificate TestCert
with SUBJECT = 'Test certificate';

BACKUP DATABASE Shop
TO DISK = 'shop.bak'
WITH ENCRYPTION (
ALGORITHM = AES_256,
SERVER CERTIFICATE =  TestCert
)


BACKUP CERTIFICATE TestCert
TO FILE = 'G:\back_11.cer'
with PRIVATE KEY
(
FILE = 'G:\back_11.pvk',
ENCRYPTION BY PASSWORD = 'Danya'
)