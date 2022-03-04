output "web-server-1" {
    value = "${aws_instance.web-server-1.public_ip}"
}

output "web-server-2" {
    value = "${aws_instance.web-server-2.public_ip}"
}

output "latest_image_win" {
    value = "${data.aws_ami.latest_ami_windows.id}"
}

output "latest_image_rhel" {
    value = "${data.aws_ami.latest_ami_linux.id}"
}