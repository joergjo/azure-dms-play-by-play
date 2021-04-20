# azure-dms-play-by-play
This is a scripted version of the [Tutorial: Migrate Azure DB for PostgreSQL - Single Server to Azure DB for PostgreSQL - 
Single Server or Hyperscale (Citus) online using DMS via the Azure portal](https://docs.microsoft.com/en-us/azure/dms/tutorial-azure-postgresql-to-azure-postgresql-online-portal), 
but for the special use case of migrating from single server to single server (e.g. to make use of [large storage](https://azure.microsoft.com/en-us/updates/postgresql-large-storage-generally-available/).

These scripts are _not_ intended to be run as is, but rather step-by-step from a code editor such as [Visual Studi Code](https://code.visualstudio.com/).

- `postgres.azcli`contains all steps to set up a source and destination server, and deploy the [DVD Rental](https://www.postgresqltutorial.com/postgresql-sample-database/) to the source server, 
and the adjusted schema in the destination server.
- `dms.azcli` creates all DMS resources and performs the migration.

To reuse these scripts for your own migration, you will need to adjust primarily `postgres.azcli` to make use of your database scripts. Also make sure to update _both_ `postgres.azcli` 
and `dms.azcli` to use your preferred Azure region, resource names, and configuration details for all involved Azure services, etc. 
