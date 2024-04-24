echo -ne "

 ██████╗ ██╗  ██╗    ███╗   ███╗██╗   ██╗██╗
██╔═══██╗██║  ██║    ████╗ ████║╚██╗ ██╔╝██║
██║   ██║███████║    ██╔████╔██║ ╚████╔╝ ██║
██║   ██║██╔══██║    ██║╚██╔╝██║  ╚██╔╝  ╚═╝
╚██████╔╝██║  ██║    ██║ ╚═╝ ██║   ██║   ██╗
 ╚═════╝ ╚═╝  ╚═╝    ╚═╝     ╚═╝   ╚═╝   ╚═╝
                                            
███╗   ███╗██╗████████╗ █████╗ ███████╗     
████╗ ████║██║╚══██╔══╝██╔══██╗██╔════╝     
██╔████╔██║██║   ██║   ███████║███████╗     
██║╚██╔╝██║██║   ██║   ██╔══██║╚════██║     
██║ ╚═╝ ██║██║   ██║   ██║  ██║███████║     
╚═╝     ╚═╝╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝     
---------------------------------------------- 
              A ZSH Script
          --------------------
            By Stelios Mitas
              ------------

"
sleep 1
AUR_HELPER=("yay" "paru" "pakku" "paccaur" "trizen" "aura" "pikaur")

#Installing the Dependancies.
echo -ne "Installing the Dependancies using the AUR Helper you have installed on your system
"
$AUR_HELPER -Sy --needed zsh zsh-syntax-highlighting autojump zsh-autosuggestions ttf-meslo-nerd-font-powerlevel10k --noconfirm



touch "$HOME/.cache/zshhistory"
#-- Setup Alias in $HOME/zsh/aliasrc
echo -ne "Seting up Alias in $HOME/zsh/aliasrc"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

echo -ne "
-------------------------------------------------------------------------
Setting ZSH As the default terminal shell to the user running this script.
                Please type /bin/zsh and press Enter.
-------------------------------------------------------------------------"
chsh $USER
echo "/bin/zsh"

echo -ne "
-------------------------------------------------------------------------
We are done! Enjoy the new shell and you can customize it both within
                    .zshrc and .p10k.zsh
-------------------------------------------------------------------------"
sleep 1
echo -ne "
-------------------------------------------------------------------------
Make sure you change your font to your favourite terminal emulator 
            To MesloLGS NF Regular with font size 15!
-------------------------------------------------------------------------
sleep 2
