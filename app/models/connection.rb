class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :prof_listing
end
