#!/bin/sh

OLD_UMASK=`umask`
umask 0027
mkdir -p /u01/app/oracle
mkdir -p /u01/app/oracle/admin/orcl/adump
mkdir -p /u01/app/oracle/admin/orcl/dpdump
mkdir -p /u01/app/oracle/admin/orcl/pfile
mkdir -p /u01/app/oracle/audit
mkdir -p /u01/app/oracle/cfgtoollogs/dbca/orcl
mkdir -p /u01/app/oracle/oradata/ORCL
mkdir -p /u01/app/oracle/oradata/ORCL/pdb
mkdir -p /u01/app/oracle/oradata/ORCL/pdbseed
mkdir -p /u01/app/oracle/product/19.0.0/dbhome_1/dbs
umask ${OLD_UMASK}
PERL5LIB=$ORACLE_HOME/rdbms/admin:$PERL5LIB; export PERL5LIB
ORACLE_SID=orcl; export ORACLE_SID
PATH=$ORACLE_HOME/bin:$ORACLE_HOME/perl/bin:$PATH; export PATH
echo /etc/oratab: orcl:/u01/app/oracle/product/19.0.0/dbhome_1:Yにこのエントリを追加してください
/u01/app/oracle/product/19.0.0/dbhome_1/bin/sqlplus /nolog @/u01/app/oracle/admin/orcl/scripts/orcl.sql

#このまま実行すると、orcl.sqlも実行されるので、実行したくない場合はコメントアウトする。
