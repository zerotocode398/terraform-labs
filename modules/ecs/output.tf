# output ecs instance
output "ali_instance" {
    value = data.alicloud_instances.ali_instance.instances
}

output "ecs_security_groups_id" {
    description = "ecs security groups id"
    value = flatten([
        for ecs in data.alicloud_instances.ali_instance.instances :
        ecs.security_groups
    ])
}
