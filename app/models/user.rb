class User < ActiveRecord::Base

 	
   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
 	has_many :proposals
 	has_many :roles
 	belongs_to :admin


end
