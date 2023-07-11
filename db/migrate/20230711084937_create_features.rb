class CreateFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :features do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
