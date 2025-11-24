resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}
resource "aws_instance" "web" {
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public.id
}



resource "aws_s3_bucket" "name" {
    bucket = "yalagandula-shankar-netha-95"
  

}
