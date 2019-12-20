class User < ApplicationRecord
 has_many :collections	

 has_secure_password


 validates :name, presence: true
 validates :name, length: {minimum:2}

 validates :password, presence: true
 validates :password, length: {minimum: 2}

	
end
