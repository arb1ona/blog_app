# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Get rid of field_with_error settings that rails puts to an input that hits a validation error
ActionView::Base.field_error_proc = proc do |html_tag, _instance|
  html_tag.html_safe
end
