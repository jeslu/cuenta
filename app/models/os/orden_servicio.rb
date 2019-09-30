class Os::OrdenServicio < ApplicationRecord
  belongs_to :user
  belongs_to :cliente
end
