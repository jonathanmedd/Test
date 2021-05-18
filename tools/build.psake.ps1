#Requires -Modules @{ModuleName="PSake"; RequiredVersion="4.9.0"},@{ModuleName="PSScriptAnalyzer"; RequiredVersion="1.19.1"},@{ModuleName="BuildHelpers"; RequiredVersion="2.0.15"}
#Requires -Modules @{ModuleName="Pester"; RequiredVersion="5.1.1"},@{ModuleName="platyPS"; RequiredVersion="0.14.1"}



Write-Host "Module versions are:"
Get-Module -Name Psake,PSScriptAnalyzer,BuildHelpers,Pester,platyPS

# --- Dot source build.settings.ps1
# . $PSScriptRoot\build.settings.ps1

# --- Add any parameters from build.ps1
properties {
}

# --- Define the build tasks
# Task Default -depends Build
# Task Build -depends Lint, UpdateModuleManifest, CreateArtifact, CreateArchive
# Task BuildWithTests -depends Init, Build, ExecuteTest, UpdateDocumentation

Task BuildWithTests {

    Write-Host "Hello there"
}