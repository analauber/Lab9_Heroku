class CreateUnos < ActiveRecord::Migration
  def change
    create_table :unos do |t|
      t.string :num

      t.timestamps
    end
  end
end
