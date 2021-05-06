# frozen_string_literal: true

class ApplicationController < ActionController::Base

    helper_method :current_user 
    # Now this makes current_user available to the views as well, 
    # not just our controllers

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]  
    end
    # The intent for this method is to return the details of the user who is logged in
end
