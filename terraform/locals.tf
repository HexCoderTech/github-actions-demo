locals {
  project_root_dir = abspath("${path.root}/..")
  src_dir          = "${local.project_root_dir}/src"
}