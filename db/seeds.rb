100.times do
  Quote.create(
    body: Faker::Movie.quote
  )
end
