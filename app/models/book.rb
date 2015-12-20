require 'open-uri'

class Book < ActiveRecord::Base
  
  has_attached_file :image,
    styles: { small: '64x64', med: '100x100', large: '200x200' },
    path:   ':rails_root/public/system/:class/:attachment/:id_partition/:style/:filename'
  
  validates_attachment :image,
    presence: true,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
    size: { in: 0..500.kilobytes }

  validates :title,
    presence: true,
    length: { minimum: 1, maximum: 255 }



end
