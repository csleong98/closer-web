class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
    	t.string :name 
    	t.text :about
    	t.string :courses 
    	t.string :age 
    	t.string :country
    	t.string :languages 
    	t.string :skills
    	t.timestamps
    end
  end
end
