# 自定义 rc 文件路径
export TF_CLI_CONFIG_FILE=/d/PyCharm/works/terraform-labs/terraform.rc

# 开启 terraform debug 日志
开启 TF_LOG=debug
关闭 unset TF_LOG

# 初始化项目
./terraform init

# 生产项目结构
```shell
terraform-labs/
│
├── environments/
│   ├── prod/
│   │   ├── main.tf
│   │   ├── provider.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   └── backend.tf
│   │
│   ├── test/
│   │   ├── main.tf
│   │   └── terraform.tfvars
│   │
│   └── dev/
│
├── modules/
│   │
│   ├── ecs/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── disk/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
├── README.md
└── .gitignore
```
# 常用命令
```shell
terraform init      # 初始化项目，项目第一次必须执行。
terraform validate  # 检查项目语法
terraform plan      # 预览执行过程，不会真正修改云资源
terraform show      # 查看项目（terraform）当前状态
terraform apply     # 应用计划，实际修改云资源
terraform output    # 查看变量输出
terraform destroy   # 销毁 terraform 管理的资源
```