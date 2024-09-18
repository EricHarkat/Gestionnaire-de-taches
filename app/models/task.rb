class Task < ApplicationRecord
  #belong_to pour iniquer qu'une tahce appartient à un projet
  belongs_to :project
end
