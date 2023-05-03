#getting the dns of the load balancer
output "lb_dns_name" {
    description = "The DNS name of the load balancer"
    value = "${aws_lb.my_external_alb.dns_name}"
}