class Claim < ActiveRecord::Base
	belongs_to :proposal
	belongs_to :creator, class_name: "User"
	belongs_to :claimer, class_name: "User"
end
