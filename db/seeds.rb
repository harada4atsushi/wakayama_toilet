# encoding: utf-8
require "csv"

CSV.foreach('db/toilet-map.csv') do |row|
  Toilet.create(:title => row[1],
                :area => row[2],
                :address => row[3],
                :time => row[4],
                :car_normal => row[5],
                :car_challenge => row[6],
                # :type => row[7],
                :man_you => row[8],
                :man_wa => row[9],
                :man_sho => row[10],
                :woman_you => row[11],
                :woman_wa => row[12],
                :all_you => row[13],
                :all_wa => row[14],
                :child_dai => row[15],
                :child_sho => row[16],
                :wash => row[17],
                :tesuri => row[18],
                :free => row[19],
                :lever => row[20],
                :emergency => row[21],
                :door => row[22],
                :space => row[23],
                :direction => row[24],
                :wash_flag => row[25],
                :care_flag => row[26],
                :ostomate_flag => row[27],
                :tap => row[28],
                :dry_flag => row[29],
                :rest_flag => row[30],
                :baggage_flag => row[31],
                :hook_flag => row[32],
                :infant_chair => row[33],
                :infant_bed => row[34],
                :sightseeing => row[35],
                :memo => row[36])
end
