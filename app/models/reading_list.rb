class ReadingList < ActiveRecord::Base

  has_many    :reading_list_items
  belongs_to  :user

  validates   :user, presence: true
end
