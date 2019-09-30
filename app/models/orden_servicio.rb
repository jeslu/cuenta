class OrdenServicio < ApplicationRecord
  belongs_to :user
  belongs_to :cliente
  belongs_to :servicio
  belongs_to :equipo
end
