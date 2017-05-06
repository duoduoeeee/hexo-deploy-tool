# hexo-deploy-tool

Deploys Hexo static pages to apache server without the hassle of setting up an FTP service on your webserver.

## Who needs this tool

- People who prefer writing and submitting posts on a mobile device (meaning no rsync or scp)

- People who prefer syncing their posts between their daily-used machine and their online storage services, say, OwnCloud and DropDav.

- People who have different servers for FTP and Apache services

## How to use

1. Suppose you have Hexo installed on your web server instead of your PC

1. Modify the wget command so that it points to the directory hosting your posts (.md).

2. If your service requires a password, use the `--user` and `--password` arguments.

3. put deploy.sh in your Hexo project root.

4. Make sure your Hexo output folder is named "public". If not, change the name respectively.

5. Sync your posts with WebDav.

6. run `deploy.sh yoursite.com`. This will copy all your posts to `/var/www/yoursite.com/public_html` directory.