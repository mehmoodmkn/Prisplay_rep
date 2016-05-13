class User < ActiveRecord::Base
	
  acts_as_token_authenticatable
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
end
