class ApplicationController < ActionController::Base

before_action :set_current_user

def set_current_user
  Faktury.current_user = current_user
end
end
