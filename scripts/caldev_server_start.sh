docker run -d --name davical --restart -p 8080:80 -v /var/davical/data:/var/lib/postgresql/data -e TIME_ZONE=Europe/Moscow -e HOST_NAME=localhost datze/davical_https
