class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:info] = 'Rejestracja jest niemożliwa.'
    redirect_to request.referrer
  end

  def create
    flash[:info] = 'Registrations are not open.'
    redirect_to request.referrer
  end
end
