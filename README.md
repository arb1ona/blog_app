STYLING - Errors and Flash messaging

-   To remove the field_with_errors functionality, add the following code to the bottom of the config/environment.rb file:

        ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
        html_tag.html_safe
        end

-   Add 'alert' + 'close' button from bootstrap
