class Project < ApplicationRecord
    #has_many pour indiquer que le projet peut avoir plusieurs taches, 
    #dependent: :destroy pour que les taches associées soient supprimées si le projet est supprimé
    has_many :tasks, dependent: :destroy
end
