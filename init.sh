sudo ln -s -f /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s -f /home/box/web/etc/hello.py /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
sudo gunicorn -c /home/box/web/etc/ask.py ask.wsgi:application
sudo git config --global user.name "Semennikov Konstantin"
sudo git config --global user.email Systemko@yandex.ru
