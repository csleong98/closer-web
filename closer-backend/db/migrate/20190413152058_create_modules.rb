class CreateModules < ActiveRecord::Migration[5.2]
  def change
    create_table :modules do |t|
    	t.string :title
    	t.text :description
    	t.string :video
    	t.timestamps
    end
  end
end