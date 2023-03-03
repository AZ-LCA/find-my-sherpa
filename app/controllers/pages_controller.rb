class PagesController < ApplicationController
    before_action :authenticate_user!,  only: [:main]
    def home
    end
    def main
    end
end
