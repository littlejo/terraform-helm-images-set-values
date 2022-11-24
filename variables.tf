variable "repo_regex" {
  description = "Repo regex to identifier different part of the string"
  type        = string
  default     = "^(?:(?P<url>[^/]+))?(?:/(?P<image>[^:]*))??(?::(?P<tag>[^:]*))"
}

variable "repo_url" {
  description = "Repo url of container image"
  type        = string
}

variable "pre_value" {
  description = "Pre value for helm, eg: container.image"
  type        = string
  default     = ""
}
