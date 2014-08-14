class Attendee < ActiveRecord::Base
  belongs_to :program_model
  belongs_to :program_segment
  belongs_to :user
  validates_formatting_of :phone, using: :us_phone
  validates_formatting_of :emmergencycontactphone, using: :us_phone
end
