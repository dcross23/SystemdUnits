#!/bin/bash

BOT_TOKEN=xxxxxxxxxx:zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz
MY_CHAT_ID=yyyyyyyyyy

case "$1" in
	start)		<F5>
		TEXT="System has booted: `date +%d/%m/%Y\ %R`"
	 ;;
 	stop)
		TEXT="System has shutdown: `date +%d/%m/%Y\ %R`"
	 ;;
esac

curl -s --data "text=$TEXT" --data "chat_id=$MY_CHAT_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' > /dev/null
