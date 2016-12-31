class Concert < ActiveRecord::Base
  belongs_to :artist
  has_one :user, through: :artist

  validates :ticket_price, :concert_date, :location, presence: true
end
