# Creating target groups for Load Balancer
resource "aws_lb_target_group" "demo" {
    name = "demo"
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.demovpc.id

  
}

#Attaching EC2 instance to the target group
resource "aws_lb_target_group_attachment" "demoa" {
    target_group_arn = aws_lb_target_group.demo.arn
    target_id = aws_instance.demo1.id
    port = 80
  
}

# Creating Load Balancers
resource "aws_lb" "demolb" {
  name                        = "demolb"
  internal                    = false
  load_balancer_type          = "application"
  subnets                     = [aws_subnet.demopub.id, aws_subnet.demopub1.id]
  enable_deletion_protection  = true
  security_groups             = [aws_security_group.lb_sg.id]

  access_logs {
    bucket  = aws_s3_bucket.demos_my_325.id
    prefix  = "logs/"
    enabled = true
  }
}