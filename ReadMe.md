⚠️ Caution
This is a script template sample, that used for download pattern matching files from azure storage. Highly suggest to reverify the script before run because this script already modified to hide confidential information. Also, due to that can have some runtime errors as well.

### Process
Add root directory or directories in the mentioned text file, make sure to add paths line by line

Before run the process need to install the azcopy tool to the system and also require to add it to environment variable as will
You can follow below steps to configure this on windows
    
### AZCopy
AZ copy is the base tool use to perform whole task
- Step 1
  Download AZ Copy tool & Extract in preferred location (Ex : C:\Azcopy)
- Step 2
  Open start menu (windows).
  Click Environment variables.
  Under system variables select Path and click edit.
  Click new and place azcopy.exe parent directory (if exe at "C:\Azcopy\azcopy.exe" then place "C:\Azcopy\" as value without double quotes) path within then click ok on all windows.
- Step 3
  Open cmd and run "azcopy --version" in that. if you get version value, good to go. 

## If destination already exist
Make sure ready to remigrate all the destinations
⚠️ Possible issues
- Files may override
- Unnecessary files may contain after the migration 
Suggest to remove the destination if files doesn't match and if really required

## Read Texts in the script parent
Within parent directory can see text files which contains the files list information.
- Text file
  - File list information or
  - error logs
    - authentication error
    - files not found errors etc.

If uncommon behavior happen read the text files for further information.