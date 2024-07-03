#EC2 Instance web tier

#resource "aws_instance" "PublicWebTemplate" {
 #   ami = "ami-00cf59bc9978eb266"
  #  instance_type = "t2.micro"
   #vpc_security_group_ids = [aws_security_group.webserver-security-group.id]
    #key_name = "source_key"
    #user_data = file("install-apache.sh")

    #tags = {
     # Name = "web-asg"
    #}

  
#}

#EC2 instance app tier

#resource "aws_instance" "private-app-template" {
 #   ami = "ami-00cf59bc9978eb266"
  #  instance_type = "t2.micro"
   # subnet_id = aws_subnet.private-app-subnet-1.id
    #vpc_security_group_ids = [aws_security_group.shh-security-group.id]
    #key_name = "source_key"

    #tags = {
     # Name = "app-asg"
    #}
  
#}