resource "aws_instance" "linux_vm2" {
    ami                         = "${var.aws_ami}"
    availability_zone           = "${var.aws_subnet2}"
    ebs_optimized               = false
    instance_type               = "${var.instance_type}"
    monitoring                  = false
    key_name                    = "${var.aws_key}"
    subnet_id                   = "${var.aws_subnet2}"
    source_dest_check = false
    vpc_security_group_ids      = ["${aws_security_group.sec-grp.id}"]
    associate_public_ip_address = true
    user_data = "${file("user-data.sh")}"
    root_block_device {
        volume_type           = "gp2"
        volume_size           = 8
        delete_on_termination = false
    }
    tags = {
        Name = "linux_vm2"
    }
}

