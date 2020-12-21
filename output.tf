output "gcp_lb_ip" {
    value = google_compute_forwarding_rule.gcplbfront.ip_address
}

output "aws_lb_dns" {
    value = aws_lb.nlb.dns_name
  
}
