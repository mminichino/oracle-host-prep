#

Install Grid:

$GRID_HOME/gridSetup.sh -ignorePrereq -silent -responseFile /home/oracle/db_grid_193.rsp
$GRID_HOME/gridSetup.sh -executeConfigTools -responseFile /home/oracle/db_grid_193.rsp -silent

Get RBS:

cd /home/oracle/rubrik-toolkit/playbooks
/home/oracle/ansible-helper/ansible-helper.py rubrik-get-service.yaml -a --node_name 10.128.1.9 --local_dir /home/oracle/rbs

Install RBS:

yum -y install /home/oracle/rbs/[host]/[version]/rubrik-agent.x86_64.rpm

Install the DB Software:

$ORACLE_HOME/runInstaller -silent -force -waitforcompletion -responsefile /home/oracle/db_install_193.rsp -ignorePrereqFailure

dbca -silent -createDatabase -responseFile /home/oracle/db_create_193_asm.rsp

