class ReadingListItem < ActiveRecord::Base

  belongs_to  :book
  belongs_to  :reading_list

  validates   :book, presence: true
  
end
