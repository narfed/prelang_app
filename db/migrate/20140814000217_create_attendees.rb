class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :name
      t.string :allergies
      t.string :special_needs
      t.integer :age
      t.references :program_model, index: true
      t.string :phone
      t.references :program_segment, index: true
      t.string :emmergencycontactphone
      t.references :user, index: true
      t.boolean :media_release

      t.timestamps
    end
  end
end
