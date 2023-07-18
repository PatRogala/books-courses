class Manufacturer < ApplicationRecord
  has_mane :widgets

  def self.fresh
    self.where(status: "fresh")
  end
end
