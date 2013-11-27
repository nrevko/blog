class Comment < ActiveRecord::Base
  belongs_to :post
  
  self.per_page = 3
  
  def to_s
    self.body
  end
end
