class Message < ActiveRecord::Base
  attr_accessible :content, :from, :opened, :to

  belongs_to :user
  belongs_to :other_user, foreign_key: 'other_user_id', class_name: 'User'


end
