# 20:00 Alarm with telegram Message
Systemd timer that sends a message every day at 20:00 and register the command response in a file.

## Requirements
- Required to have root or sudo permissions to install and run the service
- Required to have a telegram bot: is needed his token and your chat id.

## Usage 
Run "installer.sh" to automatically install and run the service.

```sh
./installer.sh BOT_TOKEN CHAT_ID
```

## Help
- Run "./installer.sh -h"
- Create telegram bot: https://core.telegram.org/bots
- Get chat id: https://sean-bradley.medium.com/get-telegram-chat-id-80b575520659

