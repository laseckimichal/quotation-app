class CreateQuotes < ActiveRecord::Migration[5.1]
  def self.up
    create_table :quotes do |t|
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
