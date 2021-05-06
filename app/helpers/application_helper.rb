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


    # Will siply check if we have a user logged in.
    def logged_in?
        !!current_user

    end

end
