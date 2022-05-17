class Fono < ApplicationRecord
    #Relacion 1-n
    belongs_to :user, class_name:"User", foreign_key:"user_id"
end
