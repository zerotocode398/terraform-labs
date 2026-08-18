# query security group rules
data "alicloud_security_group_rules" "ali_rules" {
    for_each = toset(var.sg_ids)
    group_id = each.value
}