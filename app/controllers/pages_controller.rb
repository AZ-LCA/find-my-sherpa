class PagesController < ApplicationController
    before_action :authenticate_user!,  only: [:main, :profile, :edit_user]
    def home
    end
    def main
    end
    def profile
    end
    def edit_user
    end
end
