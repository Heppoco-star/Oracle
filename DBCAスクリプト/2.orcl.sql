set verify off
ACCEPT sysPassword CHAR PROMPT 'Enter new password for SYS: ' HIDE
ACCEPT systemPassword CHAR PROMPT 'Enter new password for SYSTEM: ' HIDE
ACCEPT pdbAdminPassword CHAR PROMPT 'Enter new password for PDBADMIN: ' HIDE
host /u01/app/oracle/product/19.0.0/dbhome_1/bin/orapwd file=/u01/app/oracle/product/19.0.0/dbhome_1/dbs/orapworcl force=y format=12
@/u01/app/oracle/admin/orcl/scripts/CreateDB.sql
@/u01/app/oracle/admin/orcl/scripts/CreateDBFiles.sql
@/u01/app/oracle/admin/orcl/scripts/CreateDBCatalog.sql
@/u01/app/oracle/admin/orcl/scripts/JServer.sql
@/u01/app/oracle/admin/orcl/scripts/context.sql
@/u01/app/oracle/admin/orcl/scripts/ordinst.sql
@/u01/app/oracle/admin/orcl/scripts/interMedia.sql
@/u01/app/oracle/admin/orcl/scripts/cwmlite.sql
@/u01/app/oracle/admin/orcl/scripts/spatial.sql
@/u01/app/oracle/admin/orcl/scripts/labelSecurity.sql
@/u01/app/oracle/admin/orcl/scripts/apex.sql
@/u01/app/oracle/admin/orcl/scripts/datavault.sql
@/u01/app/oracle/admin/orcl/scripts/CreateClustDBViews.sql
@/u01/app/oracle/admin/orcl/scripts/lockAccount.sql
@/u01/app/oracle/admin/orcl/scripts/postDBCreation.sql
@/u01/app/oracle/admin/orcl/scripts/PDBCreation.sql
@/u01/app/oracle/admin/orcl/scripts/plug_pdb.sql
@/u01/app/oracle/admin/orcl/scripts/postPDBCreation_pdb.sql

======================================================================================================================================================
・CreateDB.sql
：
