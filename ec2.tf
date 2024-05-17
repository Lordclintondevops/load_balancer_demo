# Creating EC2 Instances

resource "aws_instance" "demo1" {
    ami              = var.ami
    instance_type    = var.type
    key_name         = var.key_name
    subnet_id = aws_subnet.demopub.id
    vpc_security_group_ids = [aws_security_group.lb_sg.id]


    user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo systemctl start apache2
    sudo apt-get update
    
    EOF

    #count = var.nt_count
    

    tags = {
        Name = "demo1"
    }
  
}

# Creating EC2 Instances

resource "aws_instance" "demo12" {
    ami              = var.ami
    instance_type    = var.type
    key_name         = var.key_name
    subnet_id = aws_subnet.demopub1.id
    vpc_security_group_ids = [aws_security_group.lb_sg.id]


    user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo systemctl start apache2
    sudo apt-get update
    
    EOF

    #count = var.nt_count
    

    tags = {
        Name = "demo21"
    }
  
}