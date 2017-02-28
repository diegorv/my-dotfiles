# Dotfiles vars
export DOTFILES="${HOME}/.dotfiles"
export DOTFILES_INSTALLER="${DOTFILES}/installers"
export DOTFILES_FILES="${DOTFILES}/files"
export DOTFILES_FILES_CONFIGS="${DOTFILES}/files/configs"
export DOTFILES_FILES_THEMES="${DOTFILES}/files/themes"

source ${DOTFILES_INSTALLER}/utils
clear

print_in_purple '\nOS X Config Dotfiles - diegorv\n'
ask_for_sudo

# Run installers
${DOTFILES_INSTALLER}/my_variables
${DOTFILES_INSTALLER}/osx_update
${DOTFILES_INSTALLER}/osx_customization

${DOTFILES_INSTALLER}/brew
${DOTFILES_INSTALLER}/git
${DOTFILES_INSTALLER}/ruby
${DOTFILES_INSTALLER}/shell

# Copy binaries to ~/local/bin
cp -R $DOTFILES_FILES/bin $HOME/local