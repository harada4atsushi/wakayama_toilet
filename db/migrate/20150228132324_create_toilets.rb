class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.string :title
      t.string :area
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :time
      t.integer :car_normal, default: 0
      t.integer :car_challenge, default: 0
      t.string :type
      t.integer :man_you, default: 0
      t.integer :man_wa, default: 0
      t.integer :man_sho, default: 0
      t.integer :woman_you, default: 0
      t.integer :woman_wa, default: 0
      t.integer :all_you, default: 0
      t.integer :all_wa, default: 0
      t.integer :child_dai, default: 0
      t.integer :child_sho, default: 0
      t.integer :wash, default: 0
      t.boolean :tesuri, default: false
      t.boolean :free, default: false
      t.string :lever
      t.boolean :emergency, default: false
      t.string :door
      t.string :space
      t.string :direction
      t.boolean :wash_flag, default: false
      t.boolean :care_flag, default: false
      t.boolean :ostomate_flag, default: false
      t.string :tap
      t.boolean :dry_flag, default: false
      t.boolean :rest_flag, default: false
      t.boolean :baggage_flag, default: false
      t.boolean :hook_flag, default: false
      t.boolean :infant_chair, default: false
      t.boolean :infant_bed, default: false
      t.string :sightseeing
      t.string :memo

      t.timestamps
    end
  end
end
