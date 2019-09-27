class CreateUrlLists < ActiveRecord::Migration[5.2]
  def change
    create_table :url_lists do |t|
      t.string :full_url
      t.string :short_url

      t.timestamps
    end
  end
end
