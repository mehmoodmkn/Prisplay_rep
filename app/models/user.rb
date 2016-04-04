class User < ActiveRecord::Base
  scoped_search on: [:first_name, :last_name,:dob,:gender,:nic,:ssn,:phone,:email,:address,:city,:country]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_and_belongs_to_many :tasks
  has_many :payrolls
  has_one :payments
  def online?
    updated_at > 10.minutes.ago ? "Yes" : "No"
  end
  
  #def active_for_authentication? 
  #  super && approved? 
  #end 
  #
  #def inactive_message 
  #  if !approved? 
  #    :not_approved 
  #  else 
  #    super # Use whatever other message 
  #  end 
  #end
end
