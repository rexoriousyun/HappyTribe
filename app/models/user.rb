class User < ActiveRecord::Base
  authenticates_with_sorcery!
	has_many :arrangements
	has_many :opportunities, through: :arrangements
end
