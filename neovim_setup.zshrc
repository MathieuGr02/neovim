# Set base location for Neovim configurations
export BASE_LOCATION="$HOME/.local/share/nvim_config"
CONFIGS=("latex" "rust")

# Function to open a distribution configuration
function open_distribution() {
  config="$1"

  if [[ "$config" == "list" ]]; then
    for config_name in "${CONFIGS[@]}"; do
      echo "$config_name"
    done
  elif [[ " ${CONFIGS[@]} " =~ " $config " ]]; then
    export NVIM_APPNAME="nvim_config/nvim_$config"
    nvim
    unset NVIM_APPNAME
  else
    echo "Command doesn't exist: $config"
  fi
}

# Alias for easy access
alias nvims="open_distribution"
