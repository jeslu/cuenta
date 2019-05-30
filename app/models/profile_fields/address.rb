class ProfileFields::Address < ApplicationRecord
geocoded_by :value
after_validation :geocode, if: ->(address_field){
address_field.value.present? and address_field.value_changed?
}
end
