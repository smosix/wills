class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.belongs_to :will, index: true
      t.boolean :sole_residence
      t.integer :recipient_no
      t.string :joint_or_common
      t.boolean :responsible_for_charges
      t.boolean :as_cash_if_sold
      t.boolean :held_in_trust
      t.integer :life_beneficiary_no

      t.timestamps
    end
  end
end
