output "ali_ecs_instance" {
    # value = module.ecs.ali_instance
    value = [
        for ecs in module.ecs.ali_instance :
        {
            id = ecs.id
            name = ecs.name
            private_ip = ecs.private_ip
            public_ip = ecs.public_ip
            disk = join(", ", [
                for disk in ecs.disk_device_mappings :
                join("~", [
                    disk.device,
                    "${disk.size}G"
                ])
            ])
            # disk = [
            #     for disk in ecs.disk_device_mappings :
            #     join(", ", [
            #         disk.device,
            #         "${disk.size}G"
            #     ])
            # ]
        }
    ]
}

output "ali_sg_rules" {
    description = "security group rules"
    value = toset(flatten([
        for sg_id,rule_list in module.security_groups.ali_sg_rules :[
            for rules in rule_list["rules"]:
            {
                rule = "${sg_id}, ${rules.port_range}, ${rules.description}"
            }
        ]
    ]))
}