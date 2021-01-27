class User < ApplicationRecord
    validates :password, confirmation: true

    def authenticate(password)
        self.password == password ? self : nil
    end




end
