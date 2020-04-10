class Model < ApplicationRecord
  #belongs_to :user
  # Include default devise modules. Others available are:
   #:lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :validatable
end
