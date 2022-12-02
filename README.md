# DCO - database

Bcrypt Hash Generator & Verifier: https://bcrypt.online/

## Database - Setup

To create MariaDB database with user, run:

```sql
DROP
    DATABASE IF EXISTS dco;
CREATE
    DATABASE dco CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

DROP USER IF EXISTS 'dco'@'%';
DROP USER IF EXISTS 'dco'@'localhost';
CREATE USER 'dco'@'localhost' IDENTIFIED BY 'geheim';
CREATE USER 'dco'@'%' IDENTIFIED BY 'geheim';

GRANT ALL ON dco.* TO 'dco'@'localhost';
GRANT ALL ON dco.* TO 'dco'@'%';

FLUSH PRIVILEGES;
```

### Backup

```shell
mysqldump --default-character-set=utf8 -u dco -p dco > dco_database.sql
```

### Restore

```shell
sudo mysql -u root -p dco < dco_database.sql
```
