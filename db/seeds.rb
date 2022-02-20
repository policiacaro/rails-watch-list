# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movie_pic_array = []
movie_pic_array[0] = "https://images.unsplash.com/photo-1584448141569-69f342da535c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=741&q=80"
movie_pic_array[1] = "https://images.unsplash.com/photo-1543487945-139a97f387d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=680&q=80"
movie_pic_array[2] = "https://images.unsplash.com/photo-1580130601254-05fa235abeab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=668&q=80"
movie_pic_array[3] = "https://images.unsplash.com/photo-1533038590840-1cde6e668a91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"
movie_pic_array[4] = "https://images.unsplash.com/photo-1584448097764-374f81551427?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
movie_pic_array[5] = "https://images.unsplash.com/photo-1497514440240-3b870f7341f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=626&q=80"
movie_pic_array[6] = "https://images.unsplash.com/photo-1594845281364-63dbe90f37f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80"
movie_pic_array[7] = "https://images.unsplash.com/photo-1618855468071-0fa0d8383377?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"
movie_pic_array[8] = "https://images.unsplash.com/photo-1624602434472-334d7866c46d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
movie_pic_array[9] = "https://images.unsplash.com/photo-1588421357937-c6dadca810cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"

puts "Removing old movies..."
Movie.destroy_all

puts "Creating new movies..."
10.times do |i|
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Hipster.paragraph,
    rating: rand(1..5),
    poster_url: movie_pic_array[i]
  )
end

# movies_array = Movie.all
# movies_array.each_with_index do |element, index|
#   element.poster_url = movie_pic_array[index]
# end
puts "#{Movie.count} movies created."
