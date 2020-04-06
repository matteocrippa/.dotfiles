# sway
yay -Sy sway wlroots waybar wf-recorder lxsession wdisplays mako

# video
yay -Sy libva-intel-driver-hybrid

# vm
yay -Sy vmware-workspace open-vm-tools
sudo systemctl mask usbmuxd.service

# development
yay -Sy android-studio jdk-openjdk
yay -Sy charles insomnia
yay -Sy code-git


# flutter manually
git clone https://github.com/flutter/flutter.git -b stable ~/SDK/Flutter
flutter precache
flutter doctor

sudo groupadd flutterusers
sudo gpasswd -a matteo flutterusers
sudo chown -R :flutterusers /opt/flutter
sudo chmod -R g+w /opt/flutter


# office
yay -Sy libreoffice-fresh filezilla

# editor
yay -Sy neovim neovim-symlinks nodejs-neovim python2-neovim python-neovim 
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
yay -Sy the_silver_searcher

# extra
yay -Sy neofetch

# tools
yay -Sy exa x11-ssh-askpass md2pdf

# browser
yay -Sy firefox chromium-vaapi

# performance
yay -Sy acpi acpi_call tlp cpupower tp-battery-mode
cat tlp | sudo tee /etc/default/tlp
sudo systemctl enable --now tlp
sudo systemctl enable --now
yay -Sy throttled
sudo systemctl enable --now lenovo_fix.service
sudo systemctl mask thermald.service
yay -Sy low_battery_suspend

# date
sudo systemctl enable systemd-timesyncd

# printer
yay -Sy sane brother-dcp1610w cups brscan4 simple-scan-git system-config-printer --needed --noconfirm
sudo brsaneconfig4 -a name="Brother" model="DCP1610W" ip=192.168.0.11
sudo systemctl enable --now org.cups.cupsd.service
sudo systemctl start org.cups.cupsd.service

# image
yay -Sy vlc krita libheif

# cleanup
yay -Ycc

# disable root
sudo passwd -l root

# git setup
git config --global core.editor "vim"
git config --global user.name "matteocrippa"
git config --global user.email "matteocrippa@users.noreply.github.com"

# extra keys setup
sudo cp ./90-thinkpad-keyboard.hwdb /etc/udev/hwdb.d/
sudo udevadm hwdb --update
sudo udevadm trigger --system-match="event*"
