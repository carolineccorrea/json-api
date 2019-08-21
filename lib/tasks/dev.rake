namespace :dev do
  desc "criação "
  task setup: :environment do
  
    100.times do |i|
      User.create!(
        name:Faker::Name.name,
        email:Faker::Internet.email,
        favfruit:Faker::Food.fruits,
        favcolor:Faker::Color.color_name
      )
    end
  
  end

end
