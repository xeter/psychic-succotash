#!/bin/sh

conf_file_name=".env"

save_conf() {
  if [ -z "$2" ]
  then
    echo "$1" >> "$conf_file_name"
  else
    echo "$1=$2" >> "$conf_file_name"
  fi
}

echo -n "" > "$conf_file_name"

echo "Quel est le titre du site ?"
read website_title

echo "Quelle est l'URL du site ?"
read website_url

echo "Quel est l'identifiant de l'administrateur ?"
read website_admin_user_id

echo "Quel est le mot de passe de l'administrateur ?"
read website_admin_user_password

echo "Quel est l'adresse e-mail de l'administrateur ?"
read website_admin_user_email

save_conf "# Fichier qui contient la configuration de base du site web" ""
save_conf "# Ce fichier est auto-genere. Il peut etre modifie, mais toute modification sera effacee apres l'execution des scripts genere_conf.sh ou install.sh" ""
save_conf "" ""
save_conf "WEBSITE_TITLE" "$website_title"
save_conf "WEBSITE_URL" "$website_url"
save_conf "WEBSITE_ADMIN_USER_ID" "$website_admin_user_id"
save_conf "WEBSITE_ADMIN_USER_PASSWORD" "$website_admin_user_password"
save_conf "WEBSITE_ADMIN_USER_EMAIL" "$website_admin_user_email"
