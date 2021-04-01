#!/bin/bash

BOT_TOKEN=xxxxxxxxxx:zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
MY_CHAT_ID=yyyyyyyyyy

TEXT="Timer activado, son las $(date +%R) :D"
REG_FILE=/var/tmp/registro.log

echo -e "$(date "+FECHA: %D %nHORA:  %R")\nRESPUESTA COMANDO:" >> $REG_FILE 

curl -s --data "text=$TEXT" --data "chat_id=$MY_CHAT_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' >> $REG_FILE 

echo -e "\n" >> $REG_FILE
