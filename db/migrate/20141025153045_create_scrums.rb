class CreateScrums < ActiveRecord::Migration
  def change
    create_table :scrums do |t|

      t.timestamps
    end
  end
end
