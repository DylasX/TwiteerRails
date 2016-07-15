class Tweet < ActiveRecord::Base
  has_many :comments #referirse que tiene muchos comentarios
  belongs_to :user
end
