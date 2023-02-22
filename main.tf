resource "aws_instance" "web" {

  ami                    = var.instance_ami
  instance_type          = var.instance_type
  key_name               = "devops"
  vpc_security_group_ids = ["sg-0bb5ede97080122b8"]
  tags = {

    "Name" = "web"
  }
  provisioner "file" {

    source      = "webserver-install.sh"
    destination = "/tmp/webserver-install.sh"
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("${path.module}/mykey.pem")
      host        = self.public_ip
    }
  }
  provisioner "remote-exec" {

    inline = [
      "sudo chmod +x /tmp/webserver-install.sh",
      "sudo /tmp/webserver-install.sh"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("${path.module}/mykey.pem")
      host        = self.public_ip
    }
  }
}
