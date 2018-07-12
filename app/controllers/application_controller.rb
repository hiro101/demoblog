class ApplicationController < ActionController::Base 
    before_action :get_new_posts
    def get_new_posts
        @new_posts = Post.all.order(created_at: :desc).limit(6)
    end
end
