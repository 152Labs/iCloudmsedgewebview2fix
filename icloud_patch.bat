@Echo off
cd /d C:\Program Files\WindowsApps\appleinc.icloud*
set ic=%cd%\iCloud\WebView2
takeown /F "%ic%" /R
icacls "%ic%" /T /grant administrators:F
exit