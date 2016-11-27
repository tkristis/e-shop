if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_Q7AayOqPI5BJOK9NGk3E8gTr',
    :secret_key => 'sk_test_aUcMCDYle0T57yjn8doHQ6vb'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]