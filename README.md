# DB-Queries
A date-wise directory[YYYY-MM-DD] structure will be maintained, and user can keep adding their query file based on today’s date(the date of execution).

Infra will run queries only from the git link; Not from ticket,email,chat.

This way we can track all the queries that runs, in all kinds of deployment !

DB queries => Cassandra,Redis,ES,Postgres

Note: Dont add queries with PHI/PII here. CQL Queries run by devops and infra, via JB/etl01, has its own log file which is stored in server itself. 
