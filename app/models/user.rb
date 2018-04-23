class User < ActiveRecord::Base
    has_secure_password
    ROLES = %w[admin teacher student].freeze

    
end
