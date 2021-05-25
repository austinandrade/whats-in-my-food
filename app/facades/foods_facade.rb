class FoodsFacade
  class << self
    def relevant_dishes(ingredient)
      create_dishes(FoodsService.get_dishes_including_ingredient(ingredient))
    end

    private

    def create_dishes(dish_data)
      total_found = dish_data[:totalHits]
      foods_collection = dish_data[:foods].map do |dishy_data|
        Food.new(dishy_data)
      end
      [total_found, foods_collection]
    end
  end
end
