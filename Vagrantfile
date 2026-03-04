Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/focal64"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provision "shell", inline: <<-SHELL
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

    echo "Done! Nginx is running."
  SHELL

end
