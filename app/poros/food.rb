class Food
  attr_reader :description,
              :gtin_upc_code,
              :brand_owner,
              :total_found,
              :ingredients
  def initialize(dish_data)
    @description = dish_data[:description].titlecase if dish_data[:description]
    @gtin_upc_code = dish_data[:gtinUpc] if dish_data[:gtinUpc]
    @brand_owner = dish_data[:brandOwner].titlecase if dish_data[:brandOwner]
    @ingredients = dish_data[:ingredients].present? ? dish_data[:ingredients] : nil
  end
end
