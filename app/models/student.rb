require_relative '../../db/config'

# implement your Student model here
class Student < ActiveRecord::Base
	validates :email, :format => {:with => /\w.+@.+\..{2}/, :message => "Only legit emails welcome"}, uniqueness: true
	validates :age, :numericality => {:greater_than_or_equal_to => 5}
	validates :phone, :format => {:with => /\d{3}.*\d{3}.*\d{4}.*/, :message => "Only valid phone numbers please"}

	def name
		first_name + ' ' + last_name
	end

	def age
		now = Time.now
		age = now.year - birthday.year
		age -= 1 if now.yday < birthday.yday
		age
	end

end
