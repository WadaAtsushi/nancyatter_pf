##  models/menbur.rb         =>  mount_uploader :profile_image, ProfileImageUploader 　をコメントアウト
##  models/nancyatterapp.rb  =>　mount_uploader :app_image, AppImageUploader           をコメントアウト
##  models/post.rb           =>　mount_uploader :post_image, PostImageUploader         をコメントアウト


p " ====== user テストデータ作成 ============================================="
(1..30).each do |i|
    test_user = User.new(name: "user#{i}", email: "user#{i}@test.com", password: "user#{i}")
    test_user.save
end


p " ====== appcategoy テストデータ作成 ============================================="
(1..6).each do |i|
    test_appcategory = Appcategory.new(category_name: "app-category-#{i}")
    test_appcategory.save
end


p " ====== nancyatterapp テストデータ作成 ====================================="
color = ["red", "blue", "yellow", "green", "black"]
(1..8).each do |i|
    test_app = Nancyatterapp.new(
        app_name: "test_app#{i}",
        main_text: "これはテストなアプリ#{i}です。",
        introduction: "このテストアプリ#{i}は〇〇〇〇を〇〇するたための〇〇です。 ",
        loure: "テストアプリ#{i}の使用ルールです。／　hogeをhugaしましょう　／　pien はしないでください　／ paon はギリセーフです",
        app_image: "#{i}.jpg",
        app_color: color.sample,
        user_id: User.all.sample.id,
        appcategory_id: Appcategory.all.sample.id,
        feature_like: "implement",
        feature_comment: "implement",
        feature_category: "implement",
        feature_image: "implement"
    )
    test_app.save
end



p " ====== menbur テストデータ作成 ====================================="
(1..50).each do |i|
    test_menbur = Menbur.new(
        nickname: "menbur#{i}",
        profile: "テストプロフィール。　私はmenbur#{i}です/ 最近hugaにハマってます/ hogeも気になってます/「ぴえんからぱおん」を最近知りました/ ぴよん流行らないかな。",
        icon_image: "#{rand(1..12)}.jpg",
        profile_image: "#{rand(1..12)}.jpg",
        nancyatterapp_id: Nancyatterapp.all.sample.id,
        user_id: User.all.sample.id
    )
    test_menbur.save
end


p " ====== psotcategory テストデータ作成 ====================================="
(1..50).each do |i|
    test_postcategory = Postcategory.new(
        nancyatterapp_id: Nancyatterapp.all.sample.id,
        category_name: "postcategory-#{i}"
    )
    test_postcategory.save
end


p " ====== post テストデータ作成 ====================================="
(1..300).each do |i|
    test_menbur = Menbur.all.sample
    test_app = test_menbur.nancyatterapp

    test_post = Post.new(
    title: "post#{i}", 
    content: "psot#{i}_content#{i} hoge fuga pien paon piyon dayon", 
    post_image: "#{rand(1..32)}.jpg",
    user_id: test_menbur.user.id,
    menbur_id: test_menbur.id,
    postcategory_id: test_app.postcategories.all.sample.id,
    nancyatterapp_id: test_app.id
    )
    test_post.save
end

p " ====== like テストデータ作成 ====================================="
(1..800).each do |i|
    test_like = Like.new(
        menbur_id: Menbur.all.sample.id,
        post_id: Post.all.sample.id
        )
    like_duplicate = Like.find_by(
        menbur_id: test_like.menbur_id, 
        post_id: test_like.post_id
        )
    if like_duplicate == nil
        test_like.save
    end
end



p " ====== comment テストデータ作成 ====================================="


(1..800).each do |i|
test_app = Nancyatterapp.all.sample
test_comment = Comment.new(
    comment_text: "test-comment-#{i}",
    post_id: test_app.posts.all.sample.id,
    menbur_id: test_app.menburs.all.sample.id
)
test_comment.save
end





