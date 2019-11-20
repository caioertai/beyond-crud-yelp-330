puts 'Cleaning database...'
# Check for the environment
if Rails.env.development?
  Restaurant.destroy_all
end

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    description:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    chef:         "Sebastian Saunier",
    stars:        5
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    description:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    chef:         "Krista",
    stars:        4
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
