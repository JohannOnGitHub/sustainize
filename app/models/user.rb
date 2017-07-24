class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :profession
    validates_presence_of :date_of_birth
    validates_presence_of :location
end
