sudo ln -s -f /home/box/web/etc/nginx.conf /etc/nginx/conf.d/test.conf
sudo rm /etc/nginx/conf.d/default.conf
sudo /etc/init.d/nginx restart
sudo git config --global user.name "Semennikov Konstantin"
sudo git config --global user.email Systemko@yandex.ru
