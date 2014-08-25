class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :create, Company
      can :create, User do |user|
      	user.company.users.count == 1
      end
    end
  end
end
