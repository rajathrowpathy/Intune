** Intune Compliance Policy - Enforce Device Restart Every 7 Days**

Description: This repository provides an Intune compliance policy to ensure devices are restarted at least once every 7 days. Regular restarts help maintain device performance and security by applying updates and clearing temporary files.

Key Features:

Easy to Deploy: Simply import the provided Script and json file into your Intune environment.
Customizable: Adjust the restart frequency (7 days by default) to meet your specific needs.
Clear Reporting: Easily identify non-compliant devices in the Intune portal.

Benefits:

Improved Device Performance: Regular restarts can help resolve performance issues and improve stability.
Enhanced Security: Restarts ensure timely installation of security updates and patches.
Reduced Risk: Minimizes the risk of accumulating temporary files and processes that can lead to errors.

How to Use:

Download: Download the Script and json compliance policy file from the repository.
Import: In the Intune portal, navigate to "Devices" > "Compliance policies" > "Create Policy".
Configure: Select "Platform: Windows 10 and later" and "Profile type: Custom".
Import json: Upload the downloaded file.
Assign: Assign the policy to your desired user or device groups.
Note: This policy uses the "DeviceProperty" rule to check the last restart time.

Contribute:

Feel free to contribute to this repository by submitting improvements or suggestions.

#Intune #Compliance #DeviceManagement #Security #Windows10/11 #RestartPolicy
