class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #Relacion 1-n
  has_many :fonos, class_name:"Fono", foreign_key:"user_id"
  
  #Relacion n-n
  has_and_belongs_to_many :asignaturas
end
