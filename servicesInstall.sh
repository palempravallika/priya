echo "🔄 Updating system packages..."
sudo yum update -y

echo "📦 Installing Apache (httpd)..."
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

echo "🛢 Installing MariaDB..."
sudo yum install mariadb105-server -y
sudo systemctl start mariadb
sudo systemctl enable mariadb

echo "⚙ Installing PHP and required extensions..."
sudo yum install php php-mysqlnd -y
sudo systemctl restart httpd
