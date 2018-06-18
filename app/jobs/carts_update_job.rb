class CartsUpdateJob < ActiveJob::Base
  def perform(shop_domain:, webhook:)
    shop = Shop.find_by(shopify_domain: shop_domain)
    shop.with_shopify_session do
      line_items = webhook[:line_items]
      line_items.each do |item|
        variant_id = item[:variant_id]
        price = item[:properties][:custom_price].to_f
        title = item[:title].to_s + "............."
        ShopifyAPI::Variant.new({
          id: variant_id,
          price: price
        }).save
      end
    end
  end
end