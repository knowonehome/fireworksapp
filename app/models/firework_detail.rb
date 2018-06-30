class FireworkDetail < ApplicationRecord
  belongs_to :firework_year, optional: true
  belongs_to :firework, optional: true
  accepts_nested_attributes_for :firework_year, :allow_destroy => true,
    reject_if: lambda {|attributes| attributes["year"].blank?}
end
