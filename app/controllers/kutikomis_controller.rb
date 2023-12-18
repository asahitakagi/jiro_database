class KutikomisController < ApplicationController
    before_action :authenticate_user!

    def create
      @kutikomi = Kutikomi.new
      post = Post.find(params[:post_id])
      kutikomi = post.kutikomis.build(kutikomi_params) #buildを使い、contentとtweet_idの二つを同時に代入
      kutikomi.user_id = current_user.id
      if kutikomi.save
        flash[:success] = "コメントしました"
        redirect_back(fallback_location: root_path) #直前のページにリダイレクト
      else
        flash[:success] = "コメントできませんでした"
        redirect_back(fallback_location: root_path) #直前のページにリダイレクト
      end
    end
  
   private
  
      def kutikomi_params
        params.permit(:content)
      end
end
