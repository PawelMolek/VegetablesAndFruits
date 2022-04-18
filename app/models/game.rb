class Game < ApplicationRecord
  belongs_to :participant_one, class_name: 'Participant'
  belongs_to :participant_two, class_name: 'Participant'
  belongs_to :participant_three, class_name: 'Participant'
  belongs_to :participant_four, class_name: 'Participant'
  belongs_to :snack_one, class_name: 'Snack'
  belongs_to :snack_two, class_name: 'Snack'
  belongs_to :snack_three, class_name: 'Snack'

end
