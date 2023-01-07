
#Variables
#Provider

provider "aws" {
    access_key = "{AKIATXGPHHKW6SMEFFPD}"
    secret_key = "{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}"
    region = "us-east-2"
  
}
#Resources

resource "aws_instance" "mywebserver" {
    ami = "ami-071c33e7823c066b5"
    instance_type = "t2.micro"
    key_name = "myKeynew"
  
}
#Outputs

output "myInstanceID" {
    value = aws_instance.mywebserver.id
}