class AddSuperadmin < ActiveRecord::Migration[6.0]
  def change
    User.create! do |u|
        u.email     = 'pawel_smusz@yahoo.com'
        u.password  = 'password13^'
        u.name      = 'Paweł Smusz'
        u.stanowisko      = 'Administrator'
        u.superadmin_role = true
    end
    
     User.create! do |u|
        u.email     = 'm.stypczyc@wp.pl'
        u.password  = 'password14%'
        u.name      = 'Małgorzata Stypczyc'
        u.stanowisko      = 'Główny księgowy'
        u.superadmin_role = true
    end
  end
end