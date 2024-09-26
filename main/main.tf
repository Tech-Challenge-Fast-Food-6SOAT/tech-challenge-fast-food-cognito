resource "aws_cognito_user_pool" "lanchonete_pool" {
  name = "lanchonete_pool"

  account_recovery_setting {
    recovery_mechanism {
      name     = "admin_only"
      priority = 1
    }
  }

  password_policy {
    minimum_length    = 5
    require_lowercase = false
    require_numbers   = false
    require_symbols   = false
    require_uppercase = false
  }
}

resource "aws_cognito_user_pool_client" "lanchonete_client" {
  name = "lanchonete_client"

  user_pool_id                  = aws_cognito_user_pool.lanchonete_pool.id
  generate_secret               = false
  refresh_token_validity        = 90
  prevent_user_existence_errors = "ENABLED"
}
