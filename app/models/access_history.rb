class AccessHistory < ApplicationRecord
  belongs_to :service_user
  belongs_to :service_channel
  belongs_to :book
end
