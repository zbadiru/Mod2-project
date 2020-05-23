class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :update, :edit, :destroy] 

    def index
        @reviews = Review.all
    end

    def show 
    end

    def new
        @review = Review.new
    end

    def create  
        @review = Review.create(review_params)
        redirect_to @review
    end

    def update
        @review.update(review_params)
        redirect_to @review
    end

    def edit
    end

    def destroy
        @review.destroy
        redirect_to @review
    end

    private

    def find_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:content, :client_id, :workout_plan_id)
    end
end
