class RegistrationsController < Devise::RegistrationsController
    private
  
    def after_sign_up_path_for(resource)
        root_path #root_path is to diret user after sign in to root page
    end
  end