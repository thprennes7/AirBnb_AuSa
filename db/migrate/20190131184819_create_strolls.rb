class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.belongs_to :dog_sitter
      t.belongs_to :dog
      t.belongs_to :city
      t.timestamps
    end
  end
end
