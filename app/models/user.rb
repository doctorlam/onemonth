class User < ActiveRecord::Base
 
   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

 	has_many :proposals
 	 belongs_to :admin
 	  # User::Roles
  # The available roles
  Roles = [ :admin , :default ]

  def is?( requested_role )
    self.role == requested_role.to_s
end

end
