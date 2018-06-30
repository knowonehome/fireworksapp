class FireworkDetail < ApplicationRecord
  belongs_to :firework_year, optional: true
  belongs_to :firework, optional: true
end
