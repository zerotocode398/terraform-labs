resource "alicloud_security_group" "sg" {
  security_group_name = "terraform"
  description         = "terraform security group"
}

resource "time_sleep" "wait_create_sg" {
    depends_on = [
        alicloud_security_group.sg
    ]
    create_duration = "10s"
}

resource "alicloud_security_group_rule" "ssh" {
  type              = "ingress"
  ip_protocol       = "tcp"
  port_range        = "22/22"
  cidr_ip           = "10.0.0.0/8"
  security_group_id = alicloud_security_group.sg.id
}