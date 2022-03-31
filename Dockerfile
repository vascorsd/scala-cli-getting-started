FROM archlinux:latest

# run and install updates to latest and install some tools needed to build a package
RUN pacman -Syu base-devel git sudo --noconfirm --noprogressbar

# just checkout and install my package that installs scala-cli
# makepkg to build the package doesn't run as root
RUN useradd builduser -m && passwd -d builduser && printf 'builduser ALL=(ALL) ALL\n' | tee -a /etc/sudoers
RUN sudo -u builduser bash -c 'cd /tmp && git clone https://github.com/vascorsd/archlinux-packages.git && cd archlinux-packages/scala-cli/native-bin/ && makepkg --syncdeps --install --noconfirm --noprogressbar'


