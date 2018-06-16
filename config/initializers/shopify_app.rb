ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "d7a3394c20dc84d0993e0b84e8d127b2"
  config.secret = "d98b292d1bc97a2ca1a11e02db000620"
  config.scope = "read_orders, write_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
