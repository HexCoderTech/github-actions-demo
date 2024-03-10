locals {
  project_id       = "adopt-a-book"
  project_root_dir = abspath("${path.root}/..")
  build_dir        = "${local.project_root_dir}/.build"
  src_dir          = "${local.project_root_dir}/src"
}