class CreateASharks < ActiveRecord::Migration[5.2]
  def change
    create_table :a_sharks do |t|
      t.string :Season
      t.string :no_in_series
      t.string :company
      t.string :Deal
      t.string :Industry
      t.string :Entrepreneur_gender
      t.string :amount
      t.string :equity
      t.string :valuation
      t.integer :corcoran
      t.integer :cuban
      t.integer :greiner
      t.integer :herjavec
      t.integer :john
      t.integer :oleary
      t.integer :harrington
      t.integer :guest
      t.integer :t_sharks

      t.timestamps
    end
  end
end
