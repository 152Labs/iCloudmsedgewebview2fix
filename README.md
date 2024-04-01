# iCloudmsedgewebview2fix (ENG/Google Translate)
The msedgewebview2.exe error is a occurs when running iCloud under the Administrator account.

To solve this problem, you must grant the Administrator account's execution permission to msedgewebview2.exe included in the icloud package.
> permission Error message

![error](https://github.com/152Labs/iCloudwebview2fix/assets/96193674/600f6f08-3e1f-4f25-aa81-7e10bb1a4b7a)

> no Administrator Account in ACL

![noACL](https://github.com/152Labs/iCloudwebview2fix/assets/96193674/b00ab77f-430d-49ae-b59d-772c3269d8ea)

## What is this icloud_patch.bat file?
This .bat file finds msedgewebview2.exe built into the iCloud package and automatically grants administrator permission.

also this bat file will automatically track and detect msedgewebview2.exe files even if the folder name changes due to an update in iCloud.

if you run .bat file without iCloud, batch file apply on C:\Users\Administrator\iCloud\WebView2 (if folder not exist, job si ignored)
## Windows Task Scheduler icloud_patch.xml file
when windows complete the Appx package work, "Microsoft-Windows-AppxDeploymentServer/Operational" Event Returns the Event ID 400.

also Appx package task includes an update of Microsoft Store's app.

This xml file detects the returned Event ID 400 and runs the batch file Automatically

## How To Install
- Download "icloud_patch.bat" "icloud_patch.xml" files in [Release](https://github.com/152Labs/iCloudwebview2fix/releases/tag/Release)
- move icloud_patch.bat file on safe place
> Recommend C:\Users\Administrator\
- open Task Scheduler

![taskrun](https://github.com/152Labs/iCloudwebview2fix/assets/96193674/361a80b2-d727-4141-8d7c-e57a4e88a153)

- Go to "Task Scheduler Library" and click "Import Task..."

![import](https://github.com/152Labs/iCloudwebview2fix/assets/96193674/cb950891-e3c8-4366-b378-dc546bd9874e)

- Open "icloud_patch.xml" file

![load](https://github.com/152Labs/iCloudwebview2fix/assets/96193674/4d82031a-a368-4f6e-a8cf-02d5adf35bbe)

-Check "Run whether user is logged on or not" and "Do not store password. The task will only have access to local computer resources."

![set1](https://github.com/152Labs/iCloudwebview2fix/assets/96193674/3c479022-0cfe-41dd-95ee-9bd213a38686)

-Go to "Actions" Tab and click "Edit..."

![set2](https://github.com/152Labs/iCloudwebview2fix/assets/96193674/0c2871a4-a20d-462f-b1da-d884970b4c5d)

-Click the "Browse..." button to open the "icloud_patch.bat" file. and press OK

![set3](https://github.com/152Labs/iCloudwebview2fix/assets/96193674/17899cf6-604b-4136-9f33-e658860d3944)

-Press OK button to Close Create Task window

![5](https://github.com/152Labs/iCloudwebview2fix/assets/96193674/a9825dfd-5441-4c99-a760-955e58ef9055)

>You can delete the icloud_patch.xml file.

## Apply batch file
install iCloud from [Microsoft Store](https://www.microsoft.com/store/productId/9PKTQ5699M62), the batch file will be automatically applied.

If you already iCloud installed, just run batch file once and Restart your PC

## Remove patch
- run CMD
- Type "schtasks /Delete /TN iCloud_patch"
- Type "yes" and Enter
- delete icloud_patch.bat file
