# simple-nginx #
This repository is a simple setup of nginx.      

It can be used to expose a certain server to a Minikube service.

## Configuration ##
First step is to check your service url.
```bash
$ minikube service <your_service_name> --url
http://192.168.99.100:30806
```
You can now download this repository.
```bash
git clone https://github.com/kevincharbonneau/simple-nginx.git
```

Once this is done, you have to modify `simple-nginx/nginx.default` this way.
```
proxy_pass http://192.168.99.100:30806;
```
## Running ##
To run nginx you simply have to execute the following command : 
```bash
$ cd simple-nginx
$ docker-compose up --build -d
```
## Stopping ##
To stop nginx you can execute :
```bash
$ docker-compose stop
$ docker-compose down
```
