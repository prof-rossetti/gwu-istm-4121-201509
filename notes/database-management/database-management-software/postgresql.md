# PostgreSQL

PostgreSQL is an open-source DBMS.

It provides database-management-specific features.

## Installation

Students may choose to install PostgreSQL on a personal computer by obtaining the software from the Internet.

### Installing on Windows OS

### Installing on Mac OS

Students may use the [Homebrew Package Manager](homebrew-package-manager.md) to install PostgreSQL on Mac OS.

```` sh
brew install postgresql
````

#### Post-installation

> NOTE: These post-installation instructions require additional verification.

Reference and perform any post-installation instructions provided by Homebrew.

Execute the `psql` command
 to demonstrate your ability to establish a postgresql connection
 as the default user, "postgres". After executing, you will find yourself in a postgres console which will respond to any SQL queries you type, along with special `pg` commands. Try `SELECT * FROM pg_database;` to list all databases, or `SELECT * FROM pg_user;` to list all database users. When satisfied, execute `\q` to return back to the  terminal.

Post-installation instructions are also likely to include commands similar to the following:

```` sh
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
````

If executed, these commands will ensure the postgresql server is running, even after you restart your computer.

If there are syntax differences between these commands and the homebrew-suggested commands, refer to the homebrew-suggested commands.

#### Installing Companion Software

[PG Admin](http://www.pgadmin.org/) software provides
 a human-friendly interface to PostgreSQL as an alternative to the command line.

After you have demonstrated your ability to connect to postgresql using the command line, [download PG Admin](http://www.pgadmin.org/download/).

Copy the software into your applications directory for future use.

Open the application and establish a new "Server Registration" using the following credentials:

![a screenshot depicting pg admin connection info form](/resources/images/pgadmin-root-connection-info.png)

attribute_name | attribute_value | description
--- | --- | ---
name | my custom connection | choose an informal connection name for future reference
host |  | leave this blank to indicate localhost connection
port | 5432 | postgresql operates on port 5432 by default
service | | leave this blank
maintenance db | postgres | later, after you create your own databases, you may specify the name of a database here to auto-select it after a successful connection
username | postgres | this is the pre-installed default postgresql user
password | | the postgres user does not come with a pre-defined password; leave this blank.

## Usage

Use PostgreSQL from the command line or from the PG Admin interface.

### Person Management

Create new database users and manage privileges.

Replace `my_user` with the name of your user, and `my_p@ssword` with the user's password.

```` sql
SELECT * FROM pg_user;
CREATE USER my_user WITH ENCRYPTED PASSWORD 'my_p@ssword';
ALTER USER my_user CREATEDB;
ALTER USER my_user WITH SUPERUSER;
````
