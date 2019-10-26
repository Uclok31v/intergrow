class ApplicationController < ActionController::Base
    include SessionsHelper

    before_action :set_search
    def set_search
        @q = Article.all.order(created_at: :desc).ransack(params[:q])
        @articles = @q.result(distinct: true)
    end
    
end
