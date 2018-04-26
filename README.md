# Login Logger #
This is a little script which can be called when a user logs in in his/her account on a server.<br /> 
It then sends a message to ifttt, which in my case sends a message to messenger. You can use IFTTT webhooks to do this.
check [ifttt webhooks](https://ifttt.com/maker_webhooks)

## setup ##
clone this to a folder on your server, then put the path to this script in your .bash_profile and create a .env file in the root of your home folder.

## Environment variables ##
The only environment variable you need to set, is the URL to your webhook on IFTTT.
```bash
IFTTT_URL : the url to your IFTTT webhook
```
