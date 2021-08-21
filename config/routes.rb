Rails.application.routes.draw do
  root 'nancyatterapps#top'

  get          'nancyatterapps_new', to: 'nancyatterapps#new',     as: 'app_new'
  post      'nancyatterapps_create', to: 'nancyatterapps#create',  as: 'newapp_create'
  patch 'nancyatterapps_update/:id', to: 'nancyatterapps#update',  as: 'app_update'
  get        'nancyatterapps_index', to: 'nancyatterapps#index',   as: 'app_index'
  get    'nancyatterapps_login/:id', to: 'nancyatterapps#login',   as: 'app_login'
  get       'nancyatterapps_logout', to: 'nancyatterapps#logout',  as: 'app_logout'
  get     'nancyatterapp_admin/:id', to: 'nancyatterapps#admin',   as: 'app_admin'

  get        'signin', to: 'users#signin',  as: 'signin'
  post  'user_create', to: 'users#create',  as: 'user_create'
  get  'users_index',  to: 'users#index',   as: 'users_index'
  get     'user_show', to: 'users#show',    as: 'user_show'

  get      'menbur_new', to: 'menburs#new',      as: 'menbur_new'
  post  'menbur_create', to: 'menburs#create',   as: 'menbur_create'
  get   'menburs_index', to: 'menburs#index',    as:  'menburs_index'
  get 'menbur_show/:id', to: 'menburs#show',     as:  'menbur_show'
 
  get    'login', to: 'sessions#new',     as: 'login_form'
  post   'login', to: 'sessions#create',  as: 'login_action'
  get   'logout', to: 'sessions#destroy', as: 'logout'

  post  'postcategory_create', to: 'postcategories#create',  as: 'postcategory_create'
  post 'postcategory_destroy', to: 'postcategories#destroy', as: 'postcategory_destroy'

  get     'posts_top/:id', to: 'posts#top',     as: 'posts_top'
  get          'post_new', to: 'posts#new',     as: 'post_new'
  post      'post_create', to: 'posts#create',  as: 'post_create'
  get        'post/index', to: 'posts#index',   as: 'post_index'
  get     'post_show/:id', to: 'posts#show',    as: 'post_show'
  get     'post_edit/:id', to: 'posts#edit',    as: 'post_edit'
  patch 'post_update/:id', to: 'posts#update',  as: 'post_update'
  get  'post_destroy/:id', to: 'posts#destroy', as: 'post_destroy'

  get          'like_show_create/:id', to: 'likes#create_post_show',     as: 'like_post_show_create'
  get         'like_show_destroy/:id', to: 'likes#destroy_post_show',    as: 'like_post_show_destroy'
  get    'like_post_index_create/:id', to: 'likes#create_post_index',    as: 'like_post_index_create'
  get   'like_post_index_destroy/:id', to: 'likes#destroy_post_index',   as: 'like_post_index_destroy'
  get   'like_menbur_show_create/:id', to: 'likes#create_menbur_show',   as: 'like_menbur_show_create'
  get  'like_menbur_show_destroy/:id', to: 'likes#destroy_menbur_show',  as: 'like_menbur_show_destroy'

  post 'comment_create/:id', to: 'comments#create', as: 'comment_create'

  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
