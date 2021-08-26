resource "aws_instance" "venu_instance_practice" {
    ami = "ami-02f84cf47c23f1769"
    instance_type = "t2.micro"
    security_groups = ["${aws_security_group.venu_securitygroupprac.name}"]

    tags = {
        Name = "venu_sharedLibrary_practice"
    }
}

resource "aws_security_group" "venu_securitygroupprac" {
    name = "venu_2_securitygroup"
    description = "venu security group"
    ingress = [{
        cidr_blocks = ["0.0.0.0/0"]
        description = "ingress"
        from_port = 8080
        ipv6_cidr_blocks = ["::/0"]
        prefix_list_ids = []
        protocol = "tcp"
        security_groups = []
        self = false
        to_port = 8080
    }]

    tags = {
        Name = "sharedlibrary_venu_sg_practice"
    }
}