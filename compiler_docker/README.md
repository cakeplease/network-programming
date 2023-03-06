docker build -t apache_server:1.0 .

docker run -it -p 5000:80 apache_server:1.0
