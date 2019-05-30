class CreateProfileFieldsAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :profile_fields_addresses do |t|

      t.timestamps
    end
  end
end
