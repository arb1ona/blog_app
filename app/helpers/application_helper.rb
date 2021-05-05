# frozen_string_literal: true

module ApplicationHelper

    def gravatar_for(user, options = {size: 80})
        email_address = user.email.downcase
        hash = Digest::MD5.hexdigest(email_address)
        size=options[:size]
        gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
        # we want to return this url in an image tag
        image_tag(gravatar_url, alt: user.username, class: "rounded-circle shadow mx-auto d-block")
    end

    # The intent for this method is to return the details of the user who is logged in
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]  
        # If the current user is nil(or false), then try to find it by id and assign it tp @current_user, 
        # otherwise do nothing.
        # session[:user_id] is not the email. It's the ID. We are using it to find the user
        # with User.find(session[:user_id]). This is the same as User.find(1)
    end

    # Will siply check if we have a user logged in.
    def logged_in?
        !!current_user

    end

end
