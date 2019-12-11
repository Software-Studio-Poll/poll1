class ApplicationController < ActionController::Base
  helper_method :redirect_to
  include SessionsHelper
      
    private
    
      def logged_in_user
        unless logged_in?
          flash[:danger] = "Please log in."
          redirect_to login_url
        end
      end
end
