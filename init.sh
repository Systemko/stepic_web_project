sudo ln -s -f /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo git config --global user.name "Semennikov Konstantin"
sudo git config --global user.email Systemko@yandex.ru
