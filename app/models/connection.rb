class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :prof_listing

  has_many :messages, dependent: :destroy
end
