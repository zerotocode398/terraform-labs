module "ecs" {
    source = "../../modules/ecs"
}

module "security_groups" {
    source = "../../modules/security_groups"
    sg_ids = module.ecs.ecs_security_groups_id
}