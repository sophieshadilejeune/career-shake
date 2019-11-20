class ProfListing < ApplicationRecord
  belongs_to :user

  INDUSTRIES = ["Internet", "TelCom"]
end

