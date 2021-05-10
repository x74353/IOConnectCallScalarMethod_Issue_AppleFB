# IOConnectCallScalarMethod_Issue_AppleFB
Code example for Apple Feedback Issue FB9101664


**ISSUE**<BR>
• M1-Based MacBook-family Macs enter sleep mode unexpectedly when making IOConnectCallScalarMethod call. <BR>
<BR>
**REQUIREMENTS**<BR>
• M1-Based MacBook-family Mac (MacBook Air, MacBook Pro 13" - Not iMac or Mac Mini)<BR>
• Connected to an external display (USB-C or Thunderbolt 3/4), with power delivery<BR>
• Connected USB or Bluetooth keyboard and mouse/trackpad<BR>
<BR>
**STEPS TO REPRODUCE** <BR>
• [Download](https://github.com/x74353/IOConnectCallScalarMethod_Issue_AppleFB/archive/refs/heads/main.zip) and run sample project<BR>
• Follow steps in app's user interface
<BR><BR>
<img src="Images/StepsScreen.png">
<BR><BR>
**EXPECTED RESULTS**<BR>
• M1-based Mac should not sleep when IOConnectCallScalarMethod is executed, this does NOT occur on Intel-based MacBook-family Macs<BR>
• Issue does not occur when using the built-in display alone, or in-conjunction (simultaneous) with the external display<BR>
• Actions/API calls resulting in Mac sleep should be consistent and not dependent on how many displays are connected to Mac<BR>
<BR>
**PROPOSED RESOLUTION**<BR>
• Fix bug, or provide an API to detect situation/apply override (prevent sleep)
