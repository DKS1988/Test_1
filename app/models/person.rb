class Person < ActiveRecord::Base
	belongs_to :group
	has_and_belongs_to_many :tests
	has_and_belongs_to_many :courses

	ROLES=["Администратор", "Пользователь"]
end
