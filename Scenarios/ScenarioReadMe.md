
# Scenario 1

1. Try to solidify Scenario1.txt
* Why do you think this .TXT file is able to be solidified?

2. Try to make a change to Scenario1.txt using a NON-UPDATER
* E.g., in CMD, run the following command: **echo test >> Scenario1.txt**

3. Configure a SKIPLIST to allow modification of this SOLIDIFIED file by a NON-UPDATER process (e.g. cmd.exe)


# Scenario 2

1. Create a NEW directory
* E.g., **mkdir C:\My**

2. Create an unsolidified batch file in your newly created directory
* E.g., **echo dir > C:\My\unso.bat**

3. Using SADMIN commands, configure C:\My as a TRUSTED directory which ALLOWS execution of unsolidified binaries (in this example, unso.bat) but DENIES modification on them.

You should:
a.) ensure that unso.bat is UNSOLIDIFIED (**sadmin ls -lax unso.bat**)
b.) confirm that unso.bat can be executed by a non-updater
c.) confirm that unso.bat cannot be modified (**echo test >> unso.bat** should result in an Access Denied error)