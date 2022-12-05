# == Schema Information
#
# Table name: sights
#
#  id            :bigint           not null, primary key
#  activity_type :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  place_id      :bigint           not null
#
# Indexes
#
#  index_sights_on_place_id  (place_id)
#
# Foreign Keys
#
#  fk_rails_...  (place_id => places.id)
#
class Sight < ApplicationRecord
  ACTIVITY_TYPES = [
    CHECKIN = 'checkin',
    CHECKOUT = 'checkout'
  ].freeze

  validates :activity_type, presence: true
  validates :activity_type, inclusion: { in: ACTIVITY_TYPES }
  belongs_to :place
end
