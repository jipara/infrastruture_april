output "VPC" {
  value = "${aws_vpc.dev.id}"
}
output "Public_subnet" {
  value = "${aws_subnet.public.id}"
}
output "Privet_subnet" {
  value = "${aws_subnet.privet.id}"
}
output "pub_sec_group" {
  value = "${aws_security_group.public.id}"
}
