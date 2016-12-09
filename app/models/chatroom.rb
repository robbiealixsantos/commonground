class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  def to_param
    self.slug
  end

  def slugify
    self.slug = self.topic.downcase.gsub(" ", "-")
  end

  def sanitize
    self.topic = self.topic.strip
  end
end
