#Requires -Modules @{ ModuleName="Pester"; RequiredVersion="5.1.0" }

Write-Host "Pester Module version is:"
Get-Module -Name Pester

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