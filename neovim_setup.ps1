# Neovim setup
$base_location = "${env:LOCALAPPDATA}\nvim_config"
$configs = @("latex", "rust")
Set-Alias nvims Open-Distribution

function Open-Distribution([string]$config)
{
    if ($config -eq "list")
    {
        foreach ($config_name in $configs) {
            Write-Host $config_name
        }
    }
    elseif ($configs -contains $config) 
    {
        $env:NVIM_APPNAME="nvim_config/nvim_$config"
        nvim
        $env:NVIM_APPNAME=""
    }
    else 
    {
        Write-Host "Command doens't exist: $config"
    }
}