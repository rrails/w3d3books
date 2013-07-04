# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.destroy_all
Book.destroy_all

Author.create(:name => 'Arundhati Roy', :dob => '1961/11/24', :bio => 'Suzanna Arundhati Roy is an Indian author and political activist who is best known for the 1998 Man Booker Prize for Fiction winning novel The God of Small Things', :image => 'arundhati_roy.jpg')

Book.create(:title => 'The God of Small Things', :genre => 'Fiction', :image => 'god.jpeg',:author_name=> 'ArundhatiRoy',:image => 'god.jpeg')