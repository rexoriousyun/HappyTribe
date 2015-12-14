class User < ActiveRecord::Base
	has_many :arrangements
	has_many :opportunities, through: :arrangements
end
