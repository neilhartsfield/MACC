
# Scenario 1

1. Try to solidify Scenario1.txt
* `sadmin so Scenario1.txt`
  * Why do you think this .TXT file is able to be solidified?

2. Try to make a change to Scenario1.txt using a NON-UPDATER
* `echo test >> Scenario1.txt` should yield an Access Denied error

3. Configure a SKIPLIST to allow modification of this SOLIDIFIED file by a NON-UPDATER process (e.g. cmd.exe)
  * *hint: which skiplist configuration removes the default write protection of solidified files?*

### For Scenario 1, you should:
* a.) confirm Scenario1.txt is SOLIDIFIED
  * `sadmin ls -lax Scenario1.txt`
* b.) successfully modify Scenario1.txt by a NON-UPDATER, despite being solidified
  * `echo test >> Scenario1.txt` should no longer yield an Access Denied error


# Scenario 2

1. Create a NEW directory
* `mkdir C:\My`

2. Create an unsolidified batch file in your newly created directory
* `echo dir > C:\My\unso.bat`

3. Confirm that you cannot launch unso.bat (since it should be unsolidified, you should receive an Access Denied error when trying to run it)

4. Using SADMIN commands configure C:\My as a TRUSTED directory which ALLOWS execution of unsolidified binaries (in this example, unso.bat) but DENIES modification on them.
* You will need to use TWO different sadmin configurations; one for configuring the trusted directory, and one for ensuring files within that trusted directory CANNOT be modified, regardless of solidification status
  * *hint: think about how you might add write protection to a directory*

### For Scenario 2, you should:
* a.) ensure that unso.bat is UNSOLIDIFIED (`sadmin ls -lax unso.bat`)
  * `sadmin ls -lax` output should show: **state=:"unso"** and **execution_allowed="Yes**
* b.) confirm that unso.bat can be executed by a non-updater
* c.) confirm that unso.bat cannot be modified (`echo test >> unso.bat` should result in an Access Denied error)
