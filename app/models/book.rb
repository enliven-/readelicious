class Book < ActiveRecord::Base
  has_attached_file :image, styles: { small: '64x64', med: '100x100', large: '200x200' },
                            path:   ':rails_root/public/system/:class/:attachment/:id_partition/:style/:filename'
  validates_attachment :image, :content_type => { :content_type => 'image/jpg' }
end
