class Equipo < ApplicationRecord
  belongs_to :marca
  belongs_to :modelo
  belongs_to :tipo_equipo
end
