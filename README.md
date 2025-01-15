# easy-serve

docker build -t simple-file-server .

docker run -d -p 8080:80 -v $(pwd)/src:/usr/share/nginx/html/files simple-file-server