#!/bin/sh
PROJECT=myproject
USER=server_username
URL=my_staging_server_url
read -p "$(echo $'\n*****************************') $(echo $'\n******** API STAGING ********') $(echo $'\n*****************************') $(echo $'\nPress Return to Deploy...')"; rsync -avzhe ssh --exclude-from=$HOME/$PROJECT/exclude-staging.txt $HOME/$PROJECT/ $USER@$URL:/home/$USER/$URL; read -p "Press Return to Close..."
