class Concert < ActiveRecord::Base
  belongs_to :location
  has_many :time_slots, dependent: :destroy
  has_many :performers, through: :time_slots
end
