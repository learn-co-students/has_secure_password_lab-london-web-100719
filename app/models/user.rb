class User < ActiveRecord::Base
    has_secure_password

    def display_errors
        errors.full_messages.to_sentence
    end

end
