class Lead < ApplicationRecord
  has_many :projects, dependent: :destroy
end
