class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
    t.string :url, :default => "http://itunes.apple.com/"
    t.string :alpha_numeric, :default => '00000'
    t.integer :approved, :default => '1'
    t.integer :click_count, :default => '0'

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
