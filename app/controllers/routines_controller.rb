class RoutinesController < ApplicationController
    def index
        @routines = Routine.all
    end

    def show
        @routine = Routine.find(params[:id])
    end

    def new
        @routine = Routine.new
    end

    def create
        @routine = Routine.create(routine_params)
        # byebug
        redirect_to @routine
    end

    def edit
        @routine = Routine.find(params[:id])
    end

    def update
        @routine = Routine.find(params[:id])

        @routine.update(routine_params)

        redirect_to routine_path(@routine.id)
    end
    def destroy
        Routine.destroy(params[:id])
        redirect_to routines_path
    end


    private

    def routine_params
        params.require(:routine).permit(:name, :personal_trainer_id, :exercise_list_id, :repetitions)
    end
end
