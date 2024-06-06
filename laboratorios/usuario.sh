#!/bin/bash

read -p "Nome de usuario:" usuario
sudo useradd -m $usuario
read -p "Digite a senha:" senha
sudo passwd $senha

echo "Usuario e senha criados"
