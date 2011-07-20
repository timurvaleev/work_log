# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.destroy_all

emails = %w[albert.gazizov@flatsoft.com anton.rogov@flatsoft.com dilyara.serazutdinova@flatsoft.com ilnur.yakupov@flatsoft.com leonid.dinershtein@flatsoft.com  timur.valeev@flatsoft.com dmitry.trager@flatsoft.com ruslan.gatiyatov@flatsoft.com ]

emails.each do |email|
  User.create!(
    :email => email,
    :password => '123456',
    :password_confirmation => '123456'
  )
end