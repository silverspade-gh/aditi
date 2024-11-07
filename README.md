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
