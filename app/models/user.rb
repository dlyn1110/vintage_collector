class User < ApplicationRecord

 has_secure_password


 validates :name, presence: true
 validates :name, length: {minimum:2}

	
end
