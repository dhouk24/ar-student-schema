require_relative '../config'

class MergeNameStudents < ActiveRecord::Migration
	def up
		add_column :students, :address, :string
		add_column :students, :name, :string
		Student.all.each do |student|
			student.update_attributes!(:name => student.first_name + " " + student.last_name)
			student.save
		end
		remove_column :students, :first_name
		remove_column :students, :last_name
	end

	def down
		add_column :students, :first_name
		add_column :students, :last_name
	end
end
