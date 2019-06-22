# Bootstrapping Windows

The script `bootstrap.ps1` should be execute with appropriate privilege:

* Inside a PowerShell terminal as Administrator
* The execution policy must not be Restricted, e.g. 

```powershell
Set-ExecutionPolicy RemoteSigned
```

or directly run the script

```powershell
powershell -ExecutionPolicy ByPass -File bootstrap.ps1
```
