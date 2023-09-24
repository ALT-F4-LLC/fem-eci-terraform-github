module "repository" {
  for_each = merge(local.repos)

  source  = "ALT-F4-LLC/repository/github"
  version = "0.5.0"

  description        = each.value.description
  gitignore_template = each.value.gitignore_template
  name               = each.value.name
  owner              = var.owner
  topics             = each.value.topics
  visibility         = each.value.visibility
}
