# ##  models/menbur.rb         =>  mount_uploader :profile_image, ProfileImageUploader 　をコメントアウト
# ##  models/nancyatterapp.rb  =>　mount_uploader :app_image, AppImageUploader           をコメントアウト
# ##  models/post.rb           =>　mount_uploader :post_image, PostImageUploader         をコメントアウト


# p " ====== user テストデータ作成 ============================================="
# (1..20).each do |i|
#     test_user = User.new(name: "user#{i}", email: "user#{i}@test.com", password: "user#{i}")
#     test_user.save
# end


# p " ====== appcategoy テストデータ作成 ============================================="
# (1..10).each do |i|
#     test_appcategory = Appcategory.new(category_name: "app-category-#{i}")
#     test_appcategory.save
# end


# p " ====== nancyatterapp テストデータ作成 ====================================="
# color = ["red", "blue", "yellow", "green", "black"]
# (1..10).each do |i|
#     test_app = Nancyatterapp.new(
#         app_name: "test_app#{i}",
#         main_text: "これはテストアプリ#{i}です。  ===test#{i}===",
#         introduction: "テストアプリ#{i}の紹介文です。  ===test#{i}===",
#         loure: "テストアプリ#{i}の使用ルールです。  ===test#{i}===",
#         app_image: "no_image.jpg",
#         app_color: color.sample,
#         user_id: User.all.sample.id,
#         appcategory_id: Appcategory.all.sample.id,
#         feature_like: "implement",
#         feature_comment: "implement",
#         feature_category: "implement",
#         feature_image: "implement"
#     )
#     test_app.save
#     p test_app
# end



# p " ====== menbur テストデータ作成 ====================================="
# (1..50).each do |i|
#     test_menbur = Menbur.new(
#         nickname: "menbur#{i}",
#         profile: "menbur#{i}のテストプロフィール。===test#{i}===",
#         profile_image: "no_image.jpg",
#         nancyatterapp_id: Nancyatterapp.all.sample.id,
#         user_id: User.all.sample.id
#     )
#     test_menbur.save
#     p test_menbur
# end


# p " ====== psotcategory テストデータ作成 ====================================="
# (1..50).each do |i|
#     test_postcategory = Postcategory.new(
#         nancyatterapp_id: Nancyatterapp.all.sample.id,
#         category_name: "postcategory-#{i}"
#     )
#     test_postcategory.save
# end


# p " ====== post テストデータ作成 ====================================="
# (1..300).each do |i|
#     test_menbur = Menbur.all.sample
#     test_app = test_menbur.nancyatterapp

#     test_post = Post.new(
#     title: "post#{i}", 
#     content: "psot#{i}_content#{i}_hogefugahogefuga", 
#     post_image: "no_image.jpg",
#     user_id: test_menbur.user.id,
#     menbur_id: test_menbur.id,
#     postcategory_id: test_app.postcategories.all.sample.id,
#     nancyatterapp_id: test_app.id
#     )
#     test_post.save
# end

# p " ====== like テストデータ作成 ====================================="
# count = 0
# (1..800).each do |i|
#     test_like = Like.new(
#         menbur_id: Menbur.all.sample.id,
#         post_id: Post.all.sample.id
#         )
#     like_duplicate = Like.find_by(
#         menbur_id: test_like.menbur_id, 
#         post_id: test_like.post_id
#         )
#     if like_duplicate == nil
#         test_like.save
#     end
# end



# p " ====== comment テストデータ作成 ====================================="

# (1..600).each do |i|
# test_comment = Comment.new(
#     comment_text: "test-comment-#{i}",
#     post_id: Post.all.sample.id,
#     menbur_id: Menbur.all.sample.id
# )
# test_comment.save
# end
#
#
#
#

