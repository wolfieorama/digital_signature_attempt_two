class AddAnotherFieldToSignPage < ActiveRecord::Migration
  def change
    add_column :sign_pages, :signature, :text
  end
end
