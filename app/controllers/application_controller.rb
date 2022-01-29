class ApplicationController < ActionController::Base
  # ログイン必須の設定
  before_action :authenticate_user!
end
