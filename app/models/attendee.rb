class Attendee < ActiveRecord::Base
  belongs_to :program_model
  belongs_to :program_segment
  belongs_to :user
end
