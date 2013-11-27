# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# generate 100 posts with 5  to 10 comments each and 100 tags

100.times do
  post = Post.create(:body=>Faker::Lorem.paragraphs.join("\n"))
  
  rand(5..10).times do
    Comment.create(:post_id=>post.id, :body=> Faker::Lorem.sentence)
  end
end

100.times do
  Tag.create(:name => Faker::Lorem.word)
end
