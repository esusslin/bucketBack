class User < ApplicationRecord

	has_many :proposals
  	# validates :first_name, presence: true,
   #                  length: { minimum: 5 }
end
