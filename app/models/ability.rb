class Ability
  include CanCan::Ability

  def initialize(user)
    user ||=User.new
  if user.nil?
    can :read, Proposal
  elsif user.admin?
    can :manage, Proposal
  else
    can [:read, :create], Proposal
    can [:update, :destroy], Proposal, :user_id => user.id
    can :update, @proposal, :status
  end
end
end
