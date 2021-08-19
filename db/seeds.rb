#  models/menbur.rb         =>  mount_uploader :profile_image, ProfileImageUploader 　をコメントアウト
#  models/nancyatterapp.rb  =>　mount_uploader :app_image, AppImageUploader           をコメントアウト
#  models/post.rb           =>　mount_uploader :post_image, PostImageUploader         をコメントアウト


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

test_user = User.new(name: "test", email: "test@test.com", password: "test")
test_user.save

test_appcategory = Appcategory.new(category_name: "test-category")
test_appcategory.save

test_app = Nancyatterapp.new(
    app_name: "テストアプリ",
    main_text: "み〜　て〜　る〜　だ〜　け〜　♪♪♪♫",
    introduction: "このテストアプリは〇〇〇〇を〇〇するたための〇〇です。 ",
    loure: "テストアプリの使用ルールです。／　hogeをhugaしましょう　／　pien はしないでください　／ paon はギリセーフです",
    app_image: "test.jpg",
    app_color: "green",
    user_id: test_user.id,
    appcategory_id: test_appcategory.id,
    feature_like: "implement",
    feature_comment: "implement",
    feature_category: "implement",
    feature_image: "implement"
)
test_app.save


test_menbur1 = Menbur.new(
    nickname: "てすたろう",
    profile: "テストプロフィール。　私はmenburです/ 最近hugaにハマってます/ hogeも気になってます/「ぴえんからぱおん」を最近知りました/ ぴよん流行らないかな。",
    icon_image: "test1.jpg",
    profile_image: "test1.jpg",
    nancyatterapp_id: test_app.id,
    user_id: test_user.id
)
test_menbur1.save

test_menbur2 = Menbur.new(
    nickname: "てすじろう",
    profile: "テストプロフィール。　私はmenburです/ 最近hugaにハマってます/ hogeも気になってます/「ぴえんからぱおん」を最近知りました/ ぴよん流行らないかな。",
    icon_image: "test2.jpg",
    profile_image: "test2.jpg",
    nancyatterapp_id: test_app.id,
    user_id: test_user.id
)
test_menbur2.save

test_menbur3 = Menbur.new(
    nickname: "てすざぶろう",
    profile: "テストプロフィール。　私はmenburです/ 最近hugaにハマってます/ hogeも気になってます/「ぴえんからぱおん」を最近知りました/ ぴよん流行らないかな。",
    icon_image: "test3.jpg",
    profile_image: "test3.jpg",
    nancyatterapp_id: test_app.id,
    user_id: test_user.id
)
test_menbur2.save


(1..4).each do |i|
    test_postcategory = Postcategory.new(
        nancyatterapp_id: test_app.id,
        category_name: "カテゴリー#{i}"
    )
    test_postcategory.save
end


test_post1 = Post.new(
    title: "業務効率化", 
    content: "え？　努力と根性？　必要ないってっw 　　  んーーーー! 四妖拳！！！", 
    post_image: "test1.jpg",
    user_id: test_user.id,
    menbur_id: test_menbur1.id,
    postcategory_id: Postcategory.all.sample.id,
    nancyatterapp_id: test_app.id
    )
test_post1.save

test_post2 = Post.new(
    title: "ジャンプ少年", 
    content: "影分身の術！　ね？　できたでしょ？", 
    post_image: "test2.jpg",
    user_id: test_user.id,
    menbur_id: test_menbur2.id,
    postcategory_id: Postcategory.all.sample.id,
    nancyatterapp_id: test_app.id
    )
test_post2.save

test_post3 = Post.new(
    title: "23世紀に向けて", 
    content: "ドラえもんが出てきた時のリアクション練習中です", 
    post_image: "test3.jpg",
    user_id: test_user.id,
    menbur_id: test_menbur3.id,
    postcategory_id: Postcategory.all.sample.id,
    nancyatterapp_id: test_app.id
    )
test_post3.save

test_post4 = Post.new(
    title: "バレバレ", 
    content: "え？　いやいやw　見たらわかるでしょw？　飲んでないってw　", 
    post_image: "test4.jpg",
    user_id: test_user.id,
    menbur_id: test_menbur1.id,
    postcategory_id: Postcategory.all.sample.id,
    nancyatterapp_id: test_app.id
    )
test_post4.save

test_post5 = Post.new(
    title: "ベストポジション", 
    content: "断じてハマってません！好きで居るの！動けないわけじゃないの！　　　ちょっ、おまっ、撮るんじゃねえよっ！！", 
    post_image: "test5.jpg",
    user_id: test_user.id,
    menbur_id: test_menbur2.id,
    postcategory_id: Postcategory.all.sample.id,
    nancyatterapp_id: test_app.id
    )
test_post5.save

test_post6 = Post.new(
    title: "最先端", 
    content: "2022年は大根が流行るらしい。", 
    post_image: "test5.jpg",
    user_id: test_user.id,
    menbur_id: test_menbur2.id,
    postcategory_id: Postcategory.all.sample.id,
    nancyatterapp_id: test_app.id
    )
test_post6.save

post = [test_post1, test_post2, test_post3, test_post4, test_post5, test_post6]
menbur = [test_menbur1, test_menbur2, test_menbur3]
(1..50).each do |i|
    test_like = Like.new(
        menbur_id: menbur.sample.id,
        post_id: post.sample.id
        )
    test_like.save
end


(1..50).each do |i|
test_comment = Comment.new(
    comment_text: "コメントだよん#{i}",
    post_id: post.sample.id,
    menbur_id: menbur.sample.id
)
test_comment.save
end