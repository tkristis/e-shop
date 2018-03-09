# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(:name => "Liquids", :desc => "Vape liquids")
Category.create(:name => "Accessories", :desc => "cotton, coils and etc")
Category.create(:name => "Mods", :desc => "box mods, mechanical mods")