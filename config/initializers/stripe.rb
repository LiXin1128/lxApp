if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_gyKhMAA0cfcxHD0l1RnTokOW',
    :secret_key => 'sk_test_NXhGdWZ4NaAuha301jILEeGy'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]