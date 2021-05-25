RailsAdmin.config do |config|

  
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

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
   
   config.model 'Cafemenu' do
    label 'Załącznik'
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
  end
  
    config.model 'Kontrahenci' do
      object_label_method :kontrahenci_model_name
      list do
        field :nazwa do 
        searchable true
      end
      field :NIP do 
        searchable true
      end
    end
  end
  
    config.model 'Faktury' do
      field :rodzaj_dokumentu do
      end
      
       field :numer_dokumentu do
      end
      
      field :kontrahenci do
      end
      
      field :cafemenu do
        label 'Plik'
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
 
