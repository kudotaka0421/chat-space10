class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :content, presence: true, unless: :image?
                                      #画像がある場合は適用外ですよという意味・
  mount_uploader :image, ImageUploader
end