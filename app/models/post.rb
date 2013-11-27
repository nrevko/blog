class Post < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :tags
  
  self.per_page = 2
  
  def unassociated_tags
    absent_tags = Tag.all - tags
    absent_tags.inject([]) do |memo, tag| 
      memo<<[tag.name, tag.id]
      memo
    end
  end
end
