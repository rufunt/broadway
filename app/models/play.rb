class Play < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_attached_file :play_image, styles: { play_index: "250x350>", play_show: "325x475>" }
  
  validates_attachment_content_type :play_image, :content_type => /\Aimage\/.*\Z/
end
