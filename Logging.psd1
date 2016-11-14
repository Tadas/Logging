#
# Module manifest for module 'Logging'
#
# Generated by: Massimo Bonvicini
#
# Generated on: 15/02/2016
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Logging.psm1'

# Version number of this module.
ModuleVersion = '2.3.7'

# ID used to uniquely identify this module
GUID = '25a60f1d-85dd-4ad6-9efc-35fd3894f6c1'

# Author of this module
Author = 'Massimo Bonvicini'

# Company or vendor of this module
# CompanyName = 'Unknown'

# Copyright statement for this module
Copyright = '(c) 2015 Massimo Bonvicini. All rights reserved.'

# Description of the functionality provided by this module
Description = @'
Powershell Logging Module

Features

* Separate thread that dispatch messages to targets to avoid bottleneck in the main script
* Extensible with new targets
* Custom formatting
* Each target can have his own logging level

TL;DR

Set-LoggingDefaultLevel -Level 'WARNING'
Add-LoggingTarget -Name Console
Add-LoggingTarget -Name File -Configuration @{Path = 'C:\Temp\example_%{+%Y%m%d}.log'}

$Level = 'DEBUG', 'INFO', 'WARNING', 'ERROR'
foreach ($i in 1..100) {
    Write-Log -Level ($Level | Get-Random) ('Message n.{0}' -f $i)
    Start-Sleep -Milliseconds (Get-Random -Min 100 -Max 1000)
}

Wait-Logging        # See Note

NOTE

When used in *unattended* scripts (scheduled tasks, spawned process) you need to call Wait-Logging to avoid losing messages. If you run your main script in an interactive shell that stays open at the end of the execution you could avoid using it (keep in mind that if there are messeages in the queue when you close the shell, you'll lose it)
'@

# Minimum version of the Windows PowerShell engine required by this module
# PowerShellVersion = ''

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
ProcessorArchitecture = 'None'

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
# FunctionsToExport = @()

# Cmdlets to export from this module
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('Logging', 'Log', 'Console', 'File')

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/EsOsO/Logging'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

        # External dependent modules of this module
        # ExternalModuleDependencies = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

