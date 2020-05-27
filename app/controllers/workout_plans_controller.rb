class WorkoutPlansController < ApplicationController
    def index
        @workout_plans = WorkoutPlan.all
    end

    def show
        @workout_plan = WorkoutPlan.find(params[:id])
    end

    def new
        @workout_plan = WorkoutPlan.new
    end

    def create
        @workout_plan = WorkoutPlan.create(name: params[:name], personal_trainer_id: params[:personal_trainer_id])
        # byebug
        redirect_to @workout_plan
    end

    def destroy
        WorkoutPlan.destroy(params[:id])
        redirect_to workout_plans_path
    end
    private

    def workout_plan_params
        params.require(:workout_plan).permit(:name, :personal_trainer_id)
    end
end
