# == Schema Information
#
# Table name: places
#
#  id         :bigint           not null, primary key
#  coordinate :geography        not null, point, 4326
#  locale     :string           not null
#  name       :string           not null
#  place_type :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_places_on_coordinate             (coordinate) USING gist
#  index_places_on_locale                 (locale)
#  index_places_on_locale_and_coordinate  (locale,coordinate) UNIQUE
#
class Place < ApplicationRecord
  PLACE_TYPES = %w[
    restaurant
    coffee_shop
    mall
    hotel
    other
  ].freeze

  validates :name, presence: true
  validates :locale, presence: true
  validates :coordinate, presence: true
  validates :place_type, inclusion: { in: PLACE_TYPES }
end
