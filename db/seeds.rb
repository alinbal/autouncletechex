# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
yml_file = Rails.root.join('db', 'cars_export_for_programming_assignment.yaml')
car_list = YAML.load_file(yml_file)
car_list.each do |car|
  new_car = Car.create(
    {
      brand: car[:brand],
      car_model_name: car[:car_model_name],
      equipment_variant: car[:equipment_variant],
      year: car[:year],
      headline: car[:headline],
      description: car[:description],
      fuel: car[:fuel],
      price: car[:price],
      price_currency: car[:price_currency],
      milage: car[:milage],
      milage_unit: car[:milage_unit],
      seller_kind: car[:seller_kind],
      region: car[:region]
    }
  )
  image_url_list = car[:image_urls]
  image_url_list.each do |image_url|
    ImageUrl.create({ is_primary_image: image_url[:is_primary_image], url: image_url[:url], car: new_car })
  end
  advert_list = car[:adverts]
  advert_list.each do |advert|
    Advert.create({ url: advert[:url], source_id: advert[:source_id], source_name: advert[:source_name], car: new_car })
  end
end
