class ExercisesController < ApplicationController
    def index
        @exercises = Exercise.all
    end

    def show
        @exercise = Exercise.find(params[:id])
    end

    def new
        @exercise = Exercise.new
    end

    def create
        @exercise = Exercise.create(exercise_params)
        redirect_to @exercise
    end

    def edit
        @exercise = Exercise.find(params[:id])
    end

    def update
        @exercise = Exercise.find(params[:id])

        @exercise.update(exercise_params)

        redirect_to exercise_path(@exercise.id)
    end
    def destroy
        Exercise.destroy(params[:id])

        redirect_to exercises_path
    end


    private

    def exercise_params
        params.require(:exercise).permit(:name, :routine_id)
    end
end
