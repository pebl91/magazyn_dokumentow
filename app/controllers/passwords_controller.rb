class PasswordsController < Devise::PasswordsController
    
    def new
    flash[:info] = 'Skontaktuj się z administratorem.'
    redirect_to request.referrer
    end
end 