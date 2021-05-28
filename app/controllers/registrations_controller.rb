class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:info] = 'Rejestracja jest niemożliwa.'
    redirect_to request.referrer
  end

  def create
    flash[:info] = 'Rejestracja jest zamknięta.'
    redirect_to request.referrer
  end
end
