class CreateProfiles < ActiveRecord::Migration
  def up
    create_table 'profiles' do |t|
      t.string 'name'
      t.string 'school_or_workplace'
      t.text 'technical_expertise'
      t.text 'still_learning'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table 'profiles' # deletes the whole table and all its data!
  end

end
