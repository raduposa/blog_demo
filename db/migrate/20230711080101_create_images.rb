<div class="container">
class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
</div>