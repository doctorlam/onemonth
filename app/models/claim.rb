class Claim < ActiveRecord::Base
	belongs_to :proposal, :dependent => :destroy
	belongs_to :instructor, class_name: "User"
	belongs_to :client, class_name: "User"
end
