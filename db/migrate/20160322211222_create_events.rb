class CreateEvents < ActiveRecord::Migration
  def up
    create_table 'events' do |t|
      t.text 'what'
      t.text 'where'
      t.datetime 'when'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table 'events' # deletes the whole table and all its data!
  end
end