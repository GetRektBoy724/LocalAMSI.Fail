# LocalAMSI.Fail
This is a port of AMSI.fail,i modify the code to make it C# 5 compatible and can be executed on Windows 10 without installing any extra requirements.For more info,visit [amsi.fail github repo](https://github.com/Flangvik/AMSI.fail) and visit [amsi.fail live working PoC](https://amsi.fail).
# Usage
you can compile it using Windows 10's built-in csc.exe which is located on `"C:\Windows\Microsoft.NET\Framework\<version>\csc.exe"`.
you can also use the pro-compiled binary which is in a form of library/DLL.For the DLL,you can load it on powershell directly using `[Reflection.Assembly]` 
