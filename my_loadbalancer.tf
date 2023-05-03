resource "aws_lb" "my_external_alb" {
  name = "External-alb"
  internal = "false"
  load_balancer_type = "application"
  security_groups = [aws_security_group.my_security_group.id] 
  subnets = [aws_subnet.my_pub_subnet-1, aws_subnet.my_pub_subnet-2]  
}
resource "aws_lb_target_group" "target_elb" {
  name     = "ALB-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my_vpc.id
}

resource "aws_lb_target_group_attachment" "attachment" {
  target_group_arn = aws_lb_target_group.target_elb.arn
  target_id        = aws_instance.project_instance-1.id
  port             = 80
  depends_on = [
    aws_instance.project_instance-1
  ]
}


resource "aws_lb_target_group_attachment" "attachment1" {
  target_group_arn = aws_lb_target_group.target_elb.arn
  target_id        = aws_instance.project_instance-2.id
  port             = 80
  depends_on = [
    aws_instance.project_instance-2
  ]
}


resource "aws_lb_listener" "external_elb1" {
  load_balancer_arn = aws_lb.my_external_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_elb.arn
  }

}
