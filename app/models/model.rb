class Devise < ApplicationRecord
  #belongs_to :user
  # Include default devise modules. Others available are:
   #:lockable, :timeoutable, :trackable and :omniauthable :confirmable
  devise :database_authenticatable,
         :confirmable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :omniauthable,
         :omniauth_providers => [:facebook]

end
