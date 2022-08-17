resource "aws_key_pair" "jhonatan-terraform-aws-key" {
  key_name = "jhonatan-terraform-aws"
  public_key = file("terraform-aws.pub")
}