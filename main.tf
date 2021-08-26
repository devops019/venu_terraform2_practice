resource "aws_instance" "venu_instance_practice" {
    ami = "ami-02f84cf47c23f1769"
    instance_type = "t2.micro"

    tags = {
        Name = "venu_sharedLibrary_practice"
    }
}

