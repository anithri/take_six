# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dates = Array.new(100) {|i| rand(1000)}.sort.reverse.map {|count| 1000.days.ago + count.days}

100.times do |i|
  category = Category.all.sample
  i        = InternalProject.create(name:        Faker::Company.bs,
                                 category_id: category.id,
                                 project_num: InternalProject.next_num_in_category(category.id),
                                 status_id:   Status.all.sample.id,
                                 itar_flag:   rand(2) > 0,
                                 created_at:  dates[i],
                                 updated_at:  dates[i]
  )
end
