class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
    	t.string :title
    	t.text :description
    	# Add File
    	t.string :category
    	t.string :timeframe
    	t.timestamps
    end
  end
end
