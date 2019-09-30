class Os::Equipo < ApplicationRecord
  belongs_to :marca
  belongs_to :modelo
end
