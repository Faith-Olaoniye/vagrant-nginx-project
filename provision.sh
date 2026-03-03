#!/bin/bash

set -e

apt-get update -y
apt-get install -y nginx

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Vagrant + Nginx Page</title>
</head>
<body>
    <h1>Hello from Nginx!</h1>
    <p>This page is served by Nginx on a Vagrant VM.</p>
</body>
</html>
EOF

systemctl start nginx
systemctl enable nginx
