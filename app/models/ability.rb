class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

    user ||= User.new # guest user (not logged in)
    if user.superadmin_role?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :manage, :dashboard         # allow access to dashboard
      cannot [:destroy], User, user_id: user.id 
    end
    if user.supervisor_role?
      can :access, :rails_admin
      can :manage, :dashboard
      can :manage, User
    end
    
    if user.user_role?
      can :access, :rails_admin
      can :manage, :dashboard
      can :read,    User
      can :manage,  User, user_id: user.id  
      cannot [:destroy], User
      can :read,    Kontrahenci
      can :manage,  Kontrahenci, user_id: user.id 
      can :create,  Kontrahenci, user_id: user.id 
      can :manage,  Faktury, user_id: user.id 
      can :read,    Faktury
      can :create,    Faktury, user_id: user.id 
      can :manage,  Cafemenu, user_id: user.id 
      can :read,    Cafemenu
      can :create,    Cafemenu, user_id: user.id 
      cannot [:create], User
      
    end

  end
end