ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "d7a3394c20dc84d0993e0b84e8d127b2"
  config.secret = "d98b292d1bc97a2ca1a11e02db000620"
  config.scope = "read_orders, write_products"
  config.embedded_app = true
  config.session_repository = Shop
  config.webhooks = [
	  {topic: 'carts/update', address: 'https://2a090a6a.ngrok.io/webhooks/carts_update', format: 'json'}
	]
end
