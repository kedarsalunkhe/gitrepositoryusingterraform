terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
  token = "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UXhggjh7"
}

resource "github_repository" "demorepo" {
  name        = "demorepo"
  description = "this is a demo repo created using terraform"
  visibility = "public"
} 
