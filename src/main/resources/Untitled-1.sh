aws s3 sync  /Users/fili/Desktop/waa-frontend/Real-State-FrontEnd/build s3://natna-real-estate

#!/bin/bash

 

sudo yum update -y
sudo yum install awscli -y
sudo aws s3 sync s3://natna-realstate-bucket /var/www/html
sudo yum install java-17-amazon-corretto.x86_64 -y
nohup java -jar /var/www/html/real-estate-backend-0.0.1-SNAPSHOT.jar


ratra-ALB-135821034.us-east-1.elb.amazonaws.com