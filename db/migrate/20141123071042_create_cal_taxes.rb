class CreateCalTaxes < ActiveRecord::Migration
  def change
    create_table :cal_taxes do |t|
      t.integer :withtax
      t.integer :withouttax

      t.timestamps
    end
  end
end
