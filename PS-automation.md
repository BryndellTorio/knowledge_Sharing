# PowerShell Notes

|PowerShell|Linux|
|:-:|:-:|
|Get-ChildItem|ls|
|Set-Location|cd|
|New-Item|touch|
|Copy-Item|cp|
|Move-Item|mv|
|Remove-Item|rm|
|Get-Content|cat|
|Start-Process|open|
|Get-Help|--help parameter|

# FAQ
+ What are functions?
    - A function is a block of organized, reusable code that is used to perform a single, related action. Functions provide better modularuty for your application and a high degree of code reusing.
    `function <function name> { //function body }`
+ What are Variables?
    - Variables are the names you give to computer memory locations which are used to store values in a computer program.
    `$<variable name>`
+ What are methods?
    - 
+ What are for loops??

+ What is .NET framework?
    - .NET Framework is a software development framework for building and running applications on Windows.
    - .NET Framework is part of the .NET platform, a collection of technologies for building apps for Linux, macOS, Windows, iOS, Android, and more.
    - Primarily used to develop windows based apps.

+ What is .NET Core?
    - .NET Core is a free, cross-platform, open source developer platform for building many kinds of applications .NET is built on a high-performance runtime that is used in production by many high-scale apps.
    - Philosophy ***"build once run anywhere."***

+ What is Shell?
    - a Shell is a computer program that exposes an operating system's services to a human user or other programs. In general, operating system shells\
        use either a command-line-interface(CLI) or graphical user interface(GUI).

+ How to install PowerShell?
    - recommended way to install powershell 7 is by using the winget command.\
    `winget search powershell`\
    `winget install --id Microsoft.PowerShell --source winget` 
    - reference: https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3

+ What is the latest powershell core version?
    - as of my installation PowerShell 7.3.0

+ What is the default version install in windows?
    - The default powershell is 5.1. You can check your default powershell version by invoking the command\
    `(Get-Host).Version`
