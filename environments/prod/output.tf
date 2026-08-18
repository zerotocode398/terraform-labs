output "ali_ecs_instance" {
    # value = module.ecs.ali_instance
    value = [
        for ecs in module.ecs.ali_instance :
        {
            id = ecs.id
            name = ecs.name
            private_ip = ecs.private_ip
            public_ip = ecs.public_ip
            eip = ecs.eip
            status = ecs.status
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