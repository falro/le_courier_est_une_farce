Rails.configuration.stripe = {
  :publishable_key => 'pk_test_cVfmtdlHvA3RxQoE2j9ZtUGr',
  :secret_key      => 'sk_test_N4bKd5zaua8zLsKtAitrjeuo'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]