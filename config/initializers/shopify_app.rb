ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "d7a3394c20dc84d0993e0b84e8d127b2"
  config.secret = "d7a3394c20dc84d0993e0b84e8d127b2"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
