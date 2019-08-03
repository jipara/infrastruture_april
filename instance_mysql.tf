resource "aws_instance" "web1" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "${var.key_name}"
  subnet_id              = "${aws_subnet.privet.id}"
  user_data              = "${file("userdata.sh")}"
  vpc_security_group_ids = ["${aws_security_group.privetDB.id}"]





  tags = {
    Name       = "${var.Name}.MySQL"
    Env        = "${var.Env}"
    Created_by = "${var.Created_by}"
    Dept       = "${var.Dept}"
  }
}
