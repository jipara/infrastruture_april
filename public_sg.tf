resource "aws_security_group" "public" {
  name        = "public"
  description = "Allow inbound traffic"
  vpc_id      = "${aws_vpc.dev.id}"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 443
    to_port     = 443
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}
ingress {
  from_port   = 22
  to_port     = 22
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}
ingress {
  from_port   = 80
  to_port     = 80
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}
