locals {
  app_name = "app"
  enviroment_name = var.enviroment
  version ="001"
  final_name = "${local.app_name}-${local.enviroment_name}-${local.version}"
}