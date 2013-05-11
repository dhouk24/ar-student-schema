require_relative '../../db/config'

# implement your Teacher model here
class Teacher < ActiveRecord::Base
	validates :email, :uniqueness => true

end