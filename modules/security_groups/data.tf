# query security group rules
data "alicloud_security_group_rules" "ali_rules" {
    for_each = toset(var.sg_ids)
    group_id = each.value
}

# data "alicloud_security_group_rules" "terraform_rules" {
#     group_id = alicloud_security_group.sg.id
# }
