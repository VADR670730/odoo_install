#este script esta hecho para instalar odoo 9 en ubuntu16 server
apt-get update && apt-get upgrade
apt install python3-pip
pip3 install pysftp
apt-get install postgresql -y
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/12.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list
apt-get update && apt-get install odoo
sudo wget https://builds.wkhtmltopdf.org/0.12.1.3/wkhtmltox_0.12.1.3-1~bionic_amd64.deb
sudo dpkg -i wkhtmltox_0.12.1.3-1~bionic_amd64.deb
sudo apt-get install -f
sudo ln -s /usr/local/bin/wkhtmltoimage /usr/bin
sudo ln -s /usr/local/bin/wkhtmltopdf /usr/bin
chmod 777 /usr/lib/python3/dist-packages/odoo/addons
apt install unzip
cd /usr/lib/python3/dist-packages/odoo/addons
git clone https://github.com/intresco/auto_backup.git
