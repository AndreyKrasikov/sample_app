class Relationship < ActiveRecord::Base

  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  #validates :follower_id, presense: true
  #validates :followed_id, presense: true

end
