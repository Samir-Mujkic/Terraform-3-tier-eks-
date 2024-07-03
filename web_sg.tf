## SG PRESENTATION TIER

resource "aws_security_group" "webserver-security-group" {

    name = "Web server Security group"
    description = "Enable htpp/https acces on prot 80/443 via ALB and ssh via ssh sg"
    vpc_id = aws_vpc.vpc_01.id

    ingress {
        description = "http acess"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        security_groups = ["${aws_security_group.alb-security-group.id}"]
    }

    ingress {
        description = "https access"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        security_groups = ["${aws_security_group.alb-security-group.id}"]
    }

    #ingress {
    #3description = "ssh access"
       # from_port = 22
      #  to_port = 22
     #   protocol = "tcp"
        #security_groups = ["${aws_security_group.ssh-security-group.id}"]
    #}

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "Web server Security group"
    }
  
}