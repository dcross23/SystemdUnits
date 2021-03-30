#!/bin/bash

cp SSTelMes.service /etc/systemd/system
chmod 777 /etc/systemd/system/SSTelMes.service

echo -e "#!/bin/bash\n\nBOT_TOKEN=$1\nMY_CHAT_ID=$2\n" > /usr/bin/SSTelMes.sh
sed -n '6,15p' SSTelMes.sh >> /usr/bin/SSTelMes.sh
chmod 777 /usr/bin/SSTelMes.sh

systemctl enable SSTelMes.service
systemctl start SSTelMes.service
systemctl daemon-reload

