class Asignatura < ApplicationRecord
    #Relacion n-n
    has_and_belongs_to_many :users

end
