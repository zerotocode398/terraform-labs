# output ecs instance
output "ali_instance" {
    value = data.alicloud_instances.ali_instance.instances
}
