require_relative '../../db/config'
require 'faker'	
require_relative 'teacher'
require_relative 'student'
require_relative 'course'

# 9.times do 
# 	Teacher.create(:name => Faker::Name.name, :email => Faker::Internet.email,
# 								 :address => Faker::Address.street_address,
# 								 :phone => Faker::PhoneNumber.phone_number)
# end

27.times do 
	Course.create(:student_id => rand(54) + 1, :teacher_id => rand(9) + 1)
end
