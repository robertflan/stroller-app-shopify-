class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.where(:product_type =>'custom_build')
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end
end
