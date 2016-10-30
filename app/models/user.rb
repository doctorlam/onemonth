class User < ActiveRecord::Base

   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
 	has_many :proposals
 	has_many :creations, class_name: "Claim", foreign_key: "creator_id"
  	has_many :proposal_claims, class_name: "Claim", foreign_key: "claimer_id"
 	belongs_to :admin
 	has_many :roles
 	 def role?(base_role)
  		ROLES.index(base_role.to_s) <= ROLES.index(role)
	end
 	
 	def has_role?(*role_names)
    	self.roles.where(:name => role_names).present?
  	end

 	ROLES = %w[client instructor]
 
def role_symbols
      [role.to_sym]
    end

end
