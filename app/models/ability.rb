class Ability
  include CanCan::Ability

  def initialize(user)
    user ||=User.new
  if user.nil?
    can :read, Proposal
    can :read, Claim
  elsif user.admin?
    can :manage, Proposal
    can :manage, Claim
  else
    can [:read, :create], Proposal
    can [:update, :destroy], Proposal, :user_id => user.id
    can [:read, :create], Claim
    can [:update, :destroy], Claim, :user_id => user.id
  end
end
end
