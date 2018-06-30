class Firework < ApplicationRecord
  has_many :firework_details, dependent: :destroy
  has_many :firework_years, through: :firework_details, dependent: :destroy
  # accepts_nested_attributes_for :firework_years, allow_destroy: true

  # most recent price. recording multiple years on price.
  # on the show page add the two options below under the current price.
  # two options one: new price with year. two: price history newest to oldest 10 on a page.
end
