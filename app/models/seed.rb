require 'faker'
require_relative 'teacher'
require_relative '../../db/config'
require_relative 'student'

9.times do 
	Teacher.create(:name => Faker::Name.name, :email => Faker::Internet.email,
								 :address => Faker::Address.street_address,
								 :phone => Faker::PhoneNumber.phone_number)
end

