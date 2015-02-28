json.array!(@toilets) do |toilet|
  json.extract! toilet, :id, :title, :area, :address, :time, :car_normal, :car_challenge, :type, :man_wa, :man_you, :man_sho, :woman_wa, :woman_you, :all_wa, :all_you, :child_dai, :child_sho, :wash, :tesuri, :emergency, :door, :space, :direction, :wash_flag, :care_flag, :ostomate_flag, :tap, :dry_flag, :rest_flag, :baggage_flag, :hook_flag, :infant_chair, :infant_bed, :sightseeing, :memo
  json.url toilet_url(toilet, format: :json)
end
