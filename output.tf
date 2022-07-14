output "jump_host_public_ip" {
  value = "${aws_instance.jump-host[0].public_ip}"
}
