class Link < ActiveRecord::Base
  belongs_to :user

  validates :url, presence: true, url: true
  validates_presence_of :title

  def state
    self.read ? "Read" : "Unread"
  end

  def mark_as_read
    self.update!(read:true) unless self.read
  end

  def mark_as_unread
    self.update!(read:false) if self.read
  end
end
