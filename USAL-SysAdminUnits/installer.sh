#!/bin/bash

if [[ "$#" == "1" && "$1" == "-h" ]]; then
	echo "Uso: ./installer.sh BOT_TOKEN CHAT_ID"
	exit 1
fi

if [[ "$#" != "2" ]]; then
	echo "Numero invalido de argumentos"
	echo "Uso: ./installer.sh BOT_TOKEN CHAT_ID"
	exit 1
fi

#Copy .service and .timer to /etc/systemd/system folder and give permissions
cp TelegramAlarm.service /etc/systemd/system
chmod 777 /etc/systemd/system/TelegramAlarm.service

cp TelegramAlarm.timer /etc/systemd/system
chmod 777 /etc/systemd/system/TelegramAlarm.timer

#Copy .sh to /usr/bin folder and give permissions
echo -e "#!/bin/bash\n\nBOT_TOKEN=$1\nMY_CHAT_ID=$2\n" > /usr/bin/TelegramAlarm.sh
sed -n '6,13p' TelegramAlarm.sh >> /usr/bin/TelegramAlarm.sh
chmod 777 /usr/bin/TelegramAlarm.sh

systemctl enable TelegramAlarm.timer
systemctl start TelegramAlarm.timer
systemctl daemon-reload

