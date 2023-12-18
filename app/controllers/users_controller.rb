class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) 
        likes = Like.where(user_id: @user.id).pluck(:post_id)
        @like_posts = Post.find(likes)
        @post = Post.find_by(id: params[:id])
    end
      
end
