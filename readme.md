## Clouds‐GCP

### create vm instance and than connect SSH in GCP
```
@ new project with ['rare-field']
@ Compute Engine > VM instance with ['rare-field'] (basic) > Disk size : 50G, Choose all with Firewall
@ click 'SSH' with 'rare-field'
~$ sudo apt-get update && sudo apt install -y unzip docker-compose nginx certbot python3-certbot-nginx

~$ lscpu
~$ df -h
~$ sudo systemctl status nginx
```

### DNS management (need login) with extenal IP on vm instance GCP
```
@https://dns.gabia.com/ > get Domain 
> DNS Managerment 'rare-field.shop': Host - setup extenal IP with '@' and 'www' 

@ http://34.123.194.224:80/
```

### install Docker with containers in GCP
```
~$ sudo docker system prune

~$ wget -O Rare_Field_docker.zip https://github.com/kdj0712/Rare_Field_docker/archive/refs/heads/main.zip
~$ unzip Rare_Field_docker.zip
~$ unzip docker.zip -d docker_folder && cd ./docker_folder
~/docker_folder$ sudo docker-compose build --no-cache
~/docker_folder$ sudo docker-compose --project-name rare_field up -d

~$ sudo docker ps
~$ sudo docker exec -it rare_field_springboot_3.1.1_fastapi_1 bash
```

### start fastapi server in docker
```
~# ps aux | grep uvicorn 
~# kill -9 [PID]
~# apt-get update && apt install -y nano
~# cd /apps/fastapis/apps && nano .env
/apps/fastapis# cd ../ && git pull
/apps/fastapis# nohup uvicorn mainpage:app  --host 0.0.0.0 --port 8000 --workers 2 & 
/apps/fastapis# exit

outside_docker:~$ wget http://localhost:8000
```

### start springboots server in docker
```
~# ps aux | grep gradlew 
~# kill -9 [PID]
~# cd /apps/springboots && nano ./src/main/resources/application.properties
  ...
server.address=0.0.0.0
  ...
spring.datasource.url=jdbc:mysql://rare_field_db_mysql_8_1:3306/rarefield
  ...
remote.server.url=http://rare-field.shop:80/       
root.file.folder=/apps/fastapis/data/img   

/apps/springboots# chmod +x ./gradlew && nohup ./gradlew bootRun 
/apps/springboots# exit

outside_docker:~$ wget http://localhost:8080
```

### setup https certification and start nginx in GCP
```
~$ sudo certbot --nginx -d rare-field.shop -d www.rare-field.shop
~$ sudo rm /etc/nginx/sites-available/default
~$ sudo nano /etc/nginx/sites-available/default
  ... 
~$ sudo nginx -t
~$ sudo systemctl restart nginx

@ https://rare-field.shop/
@ https://www.rare-field.shop/
@ http://www.rare-field.shop:80/
@ http://rare-field.shop:80/
```