module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name                        = "single-instance"
  instance_type               = "t3.large"
  monitoring                  = true
  subnet_id                   = aws_subnet.main.id
  vpc_security_group_ids      = [aws_security_group.main.id]
  associate_public_ip_address = true


  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
