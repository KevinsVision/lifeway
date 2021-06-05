class User < ApplicationRecord

  validates :msg_id, uniqueness: true

end
