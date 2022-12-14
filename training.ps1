function Print-Text {
    param ([string]$Name)
        process {
            if ( $Name -eq "Check" ) {
                echo "Checked!"
            }
            else {
                echo "You entered: $Name"
            }
        }
}


### Build-Project is a function that automates creation of folder structure.
### Basis of the hierarchy is in the gitmind app named file hierarchy.

function Build-Project {
    [CmdletBinding(SupportsShouldProcess)]
        param (
                [string]$Name
              ) 
            
            process {
                $_tmp = Get-Location
                    $_tmp = $_tmp -split '\\'
                    if (($_tmp[$_tmp.Length - 1] -eq "Project") -or ($_tmp[$_tmp.Length - 1] -eq "Projects") -or ($_tmp[$_tmp.Length - 1] -eq "tmp")) {
                        if (Test-Path -Path ".\*$Name*") {
                            Write-Warning "$Name already exist."
                        }
                        else {
                            New-item -Name $Name -Path . -ItemType Directory -ErrorAction Ignore
                                "Design Files", "Documents" | ForEach-Object { New-item -Name "$_" -Path ".\$Name" -ItemType "Directory" -ErrorAction "Ignore" }
                                "Schematic", "Layout" | ForEach-Object { New-item -Name "$_" -Path ".\$Name\Design Files\PCB" -ItemType "Directory" -ErrorAction "Ignore" }
                                "3D models" | ForEach-Object { New-item -Name "$_" -Path ".\$Name\Design Files\PCB\Layout" -ItemType "Directory" -ErrorAction "Ignore" }
                                "Verification" | ForEach-Object { New-item -Name "$_" -Path ".\$Name\Design Files" -ItemType "Directory" -ErrorAction "Ignore" }
                                "Simulation", "Design Checklist", "Test" | ForEach-Object { New-item -Name "$_" -Path ".\$Name\Design Files\Verification" -ItemType "Directory" -ErrorAction "Ignore" }
                                "Datasheet", "Reports", "Reviews", "Meeting Notes" | ForEach-Object { New-Item -Name "$_" -Path ".\$Name\Documents" -ItemType "Directory" -ErrorAction "Ignore" }
                                Write-Output "`n[$Name project sub-folders generated.]"
                        }
                    } else {
                        Write-Warning "Check project location."
                    }
            }
}

function Lock-Block {
    Param([string]$Name)
        process {
            while ($true) {
                $WShell.sendkeys("{SCROLLLOCK}")
                    Clear-Host
                    Write-Host "Screen Lock Activated."
                    Start-Sleep -Milliseconds 5000
            }
        }
}
