class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.string :item
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
