sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabeles/default
sudo service nginx stop
sudo nginx -c /etc/nginx/sites-enabled/test.conf

sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/gunicorn.py
cd /home/box/web && sudo gunicorn -c /home/box/web/etc/gunicorn.py hello:application
