class Place < ApplicationRecord
  belongs_to :company
  has_one :node
end
