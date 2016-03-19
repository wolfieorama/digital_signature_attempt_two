class CreateSignPages < ActiveRecord::Migration
  def change
    create_table :sign_pages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
