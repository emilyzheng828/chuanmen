class CreateAvailableTimes < ActiveRecord::Migration
  def change
    create_table :available_times do |t|
      t.datetime :from
      t.datetime :to
      t.references :user, index: true
    end
  end
end
