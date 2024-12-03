The database dump places.sql contains commands to construct the database and its tables. It also adds constraints and checks.

I also added cmdlines.txt to reference some commands entered in shells such as PowerShell and the Amazon Linux AMI command-line interface.

---

Two key-pairs are used to connect to the EC2/RDS instance:

Nimbus key-pair is used for the EC2 instance.
  
Nimbus key-pair, silver is used for the RDS database instance.

---

*Importing CSV Tips*

When adding rows, double-quotes aren't used around values because they are used for identifiers such as column names or table names (or any other name).

They are used during CSV import when commas are present in the entry so PostgreSQL knows not to confuse it with a delimitation.

Spaces can be used during a standard INSERT INTO statement because the values are enclosed around quotes. The spaces would not be entered as values.
With a CSV or any other import, the entries are delimited by a value, default comma in CSV files (or tab in TEXT files).
Any data between the delimiters represents an entry. Therefore, spaces cannot be used unless intended to be part of the entry.

---

Log-in Instructions

To log in to an AWS EC2 instance, use the command `ssh -i my\path\to\my\pem\file.pem ec2-user@ec2-12-345-678-90.compute-1.amazonaws.com`
where `my\path\to\my\pem\file.pem` is the path to your `.pem` file and the IP `12-345-678-90` is the IP address of your instance.
