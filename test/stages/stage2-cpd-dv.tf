module "cp-data-virtualization" {
  source = "./module"

  gitops_config = module.gitops.gitops_config
  git_credentials = module.gitops.git_credentials
  server_name = module.gitops.server_name
  namespace = module.gitops_namespace.name
  kubeseal_cert = module.gitops.sealed_secrets_cert
  # operator_namespace= module.cp4d-operator.namespace
  cpd_namespace = module.cp4d-instance.namespace
}
