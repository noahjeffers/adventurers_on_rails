Faker::Name.unique.clear
Faker::UniqueGenerator.clear

Item.delete_all
Adventurer.delete_all

7.times do
  adventurer = Adventurer.create(name: Faker::Games::ElderScrolls.unique.name)
  number_of_items = rand(4..8)

  number_of_items.times do
    name = if (rand(0..1)) == 1
             Faker::Games::ElderScrolls.unique.weapon
           else
             Faker::Games::ElderScrolls.unique.jewelry
           end

    adventurer.items.create(name:        name,
                            price:       Faker::Commerce.price,
                            description: "As they say: #{Faker::Games::WarhammerFantasy.quote}")
  end
end

puts "Created #{Adventurer.count} Adventurers"
puts "Created #{Item.count} Items"
