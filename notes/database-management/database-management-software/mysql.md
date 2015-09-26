# MySQL

MySQL is an open-source DBMS.

It provides database-management-specific features.

## Installation

Students may choose to install MySQL on a personal computer by obtaining the software from the Internet.

### Installing on Windows OS

### Installing on Mac OS

Students may use the [Homebrew Package Manager](homebrew-package-manager.md) to install MySQL on Mac OS.

```` sh
brew install mysql
````

#### Post-installation

Reference and perform any post-installation instructions provided by Homebrew.

Execute the `mysql -uroot` command
 to demonstrate your ability to establish a mysql connection
 as the default mysql user, "root". After executing, you will find yourself in a mysql console which will respond to any SQL queries you type. Try `SHOW DATABASES;` to list all databases, or `SELECT user, host, password FROM mysql.user;` to list all database users. When satisfied, execute `exit;` to return back to the  terminal.

Post-installation instructions are also likely to include commands similar to the following:

```` sh
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
````

If executed, these commands will ensure the mysql server is running, even after you restart your computer.

If there are syntax differences between these commands and the homebrew-suggested commands, refer to the homebrew-suggested commands.

#### Installing Companion Software

[Sequel Pro](http://www.sequelpro.com/) software provides
 a human-friendly interface to MySQL as an alternative to the command line.

After you have demonstrated your ability to connect to mysql using the command line, [download Sequel Pro](http://www.sequelpro.com/download).

Copy the software into your applications directory for future use.

Open the application and establish a new "Standard" connection using the following credentials:

![a screenshot depicting sequel pro connection info form](/resources/images/sequel-pro-root-connection-info.png)

attribute_name | attribute_value | description
--- | --- | ---
name | my custom connection | leave blank, or optionally choose an informal connection name for future reference
host | 127.0.0.1 | after typing *localhost*, you will be prompted to select *127.0.0.1*
username | root | this is the pre-installed default mysql user
password | | the root user does not come with a pre-defined password; leave this blank.
database | | later, after you create your own databases, you may specify the name of a database here to auto-select it after a successful connection; for now leave this blank
port | 3306 | mysql operates on port 3306 by default

Test the connection and save it to favorites before connecting.

Optionally enable keyword auto-capitalization from the settings menu.

## Usage

Use MySQL from the command line or from the Sequel Pro interface.

### Person Management

```` sql
-- todo
````
