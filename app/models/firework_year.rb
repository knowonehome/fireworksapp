class FireworkYear < ApplicationRecord
has_many :firework_details
has_many :fireworks, through: :firework_details

  # think about price and stash status separation on year.
  # so price stash and qty in one model and they have many years.
end
