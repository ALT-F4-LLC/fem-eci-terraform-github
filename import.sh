#!/bin/bash
set -e

terraform import 'module.repository["fem-eci-terraform-github"].github_repository.self' 'fem-eci-terraform-github'
terraform import 'module.repository["fem-eci-terraform-tfe"].github_repository.self' 'fem-eci-terraform-tfe'
