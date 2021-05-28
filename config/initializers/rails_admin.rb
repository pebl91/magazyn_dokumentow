RailsAdmin.config do |config|
config.parent_controller = "::ApplicationController"
config.authorize_with :cancancan
  
  
  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  
  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit 
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  
   config.model 'User' do
     list do
       field :name do
        label 'Imię i Nazwisko'
      end 
      field :stanowisko do
        label 'Stanowisko'
      end 
      field :email do
      end
      configure :password do
        hide
        label 'Nowe hasło'
        searchable false
      end
      configure :superadmin_role do
        hide
        label 'Administrator'
        searchable false
      end
       configure :supervisor_role do
        hide
        label 'Moderator'
        searchable false
      end
      configure :user_role do
        hide
        label 'Użytkownik'
        searchable false
      end
    end
    field :name do
        label 'Imię i Nazwisko'
      end 
       field :stanowisko do
        label 'Stanowisko'
      end 
      field :email do
      end
      field  :password do
        label 'Nowe hasło'
        searchable false
      end
       field  :superadmin_role do
        label 'Administrator'
        searchable false
      end
      field  :supervisor_role do
        label 'Moderator'
        searchable false
      end
      field  :user_role do
        label 'Użytkownik'
        searchable false
      end
   end
   
   config.model 'Cafemenu' do
    label 'Załączniki'
    field :name do
    label 'Nazwa'
  end
  field :file do
    label 'Plik'
  end
    edit do
      field :name, :string
      field :file, :carrierwave
    end
    field :user do
      label 'Użytkownik'
    end
    edit do 
    field :user do
      label 'Użytkownik'
      inline_add false
      inline_edit false
    end
    end 
  end
  
    config.model 'Kontrahenci' do
      object_label_method :kontrahenci_model_name
      field :nazwa do 
        searchable true
      end
      field :ulica do 
        searchable true
      end
      field :kod_pocztowy do 
        searchable true
      end
      field :miasto do 
        searchable true
      end
      field :user do 
        label 'Użytkownik'
        searchable true
        inline_add false
        inline_edit false
      end
      list do
        field :nazwa do 
        searchable true
      end
    end
    edit do 
      field :nazwa do 
        searchable true
      end
      field :ulica do 
        searchable true
      end
      field :kod_pocztowy do 
        searchable true
      end
      field :miasto do 
        searchable true
      end
      field :user do 
      end 
    end
    
  end
  
    config.model 'Faktury' do
      field :rodzaj_dokumentu do
      end
      
       field :numer_dokumentu do
      end
      
      field :kontrahenci do
        inline_add false
        inline_edit false
      end
      
      field :cafemenu do
        label 'Plik'
        inline_edit false
      end
      
      field :user do
        label 'Użytkownik'
        inline_add false
        inline_edit false

    end 
      
           field :data_wystawienia do
        strftime_format do
          '%d-%m-%Y'
      end
    end
      field :okres_od do
        strftime_format do
          '%d-%m-%Y'
      end
    end 
      
      field :okres_do do
        strftime_format do
          '%d-%m-%Y'
        end
      end
    end
 

  
    config.model 'Faktury' do
   
      object_label_method :faktury_model_name
      list do
        field :rodzaj_dokumentu do 
        searchable true
      end
        field :numer_dokumentu do 
          searchable true
        end
        field :data_wystawienia do 
          searchable true
        end
         field :okres_od do 
          searchable true
        end
         field :okres_do do 
          searchable true
        end
        field :kontrahenci do 
          searchable true
          searchable :nazwa
        end
        field :cafemenu do 
          searchable true
        end
    end
  end
end
 
