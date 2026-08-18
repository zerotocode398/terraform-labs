# output "ali_ecs_instance" {
#     # value = module.ecs.ali_instance
#     value = [
#         for ecs in module.ecs.ali_instance :
#         {
#             id = ecs.id
#             name = ecs.name
#             # private_ip = ecs.private_ip
#             # public_ip = ecs.public_ip
#             sgid = toset(ecs.security_groups)
#             # disk = join(", ", [
#             #     for disk in ecs.disk_device_mappings :
#             #     join("~", [
#             #         disk.device,
#             #         "${disk.size}G"
#             #     ])
#             # ])
#             # disk = [
#             #     for disk in ecs.disk_device_mappings :
#             #     join(", ", [
#             #         disk.device,
#             #         "${disk.size}G"
#             #     ])
#             # ]
#         }
#     ]
# }

output "ali_sg_rules" {
    value = module.security_groups.ali_sg_rules
}