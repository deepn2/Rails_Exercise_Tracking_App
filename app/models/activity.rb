class Activity < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :intensity
end
