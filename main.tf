locals {
  image = try(regex(var.repo_regex, var.repo_url), {})

  set_values_default = local.image != {} ? [
    { name = "${var.pre_value}.repository", value = "${local.image.url}/${local.image.image}" },
    { name = "${var.pre_value}.tag", value = local.image.tag }
  ] : []

  set_values_nginx = local.image != {} ? [
    { name = "${var.pre_value}.registry", value = local.image.url },
    { name = "${var.pre_value}.image", value = local.image.image },
    { name = "${var.pre_value}.tag", value = local.image.tag },
    { name = "${var.pre_value}.digest", value = "false" },
  ] : []

  set_values = {
    default = local.set_values_default
    nginx   = local.set_values_nginx
  }
}
