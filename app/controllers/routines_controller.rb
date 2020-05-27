class RoutinesController < ApplicationController
    def index
        @routines = Routine.all
    end

    def show
        @routine = Routine.find(params[:id])
    end

    def new
        @routine = Routine.new
        # @routine.exercises.build(name: 'Exercise')
        # @routine.exercises.build(name: 'Exercise')
        # @routine.exercises.build(name: 'Exercise')
        # @routine.exercises.build(name: 'Exercise')
    end

    def create
        @routine = Routine.create(routine_params)
        # byebug
        exercise_1 = params["exercises"]["exercise_1"]
        exercise_2 = params["exercises"]["exercise_2"]
        exercise_3 = params["exercises"]["exercise_3"]
        exercise_4 = params["exercises"]["exercise_4"]
        ex1 = Exercise.find_or_create_by(name:exercise_1)
        ex2 = Exercise.find_or_create_by(name:exercise_2)
        ex3 = Exercise.find_or_create_by(name:exercise_3)
        ex4 = Exercise.find_or_create_by(name:exercise_4)

        ExerciseList.create(routine_id: @routine.id, exercise_id: ex1.id )
        ExerciseList.create(routine_id: @routine.id, exercise_id: ex2.id )
        ExerciseList.create(routine_id: @routine.id, exercise_id: ex3.id )
        ExerciseList.create(routine_id: @routine.id, exercise_id: ex4.id )
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
        params.require(:routine).permit(
            :name, 
            :personal_trainer_id,  
            :repetitions,
        )
    end
end
# <%= f.fields_for :exercises do |exe| %>
#     <% #byebug %>
#         <%= exe.label :exercise_1%>
#         <%= exe.text_field :name%><br>
    
#         <%= exe.label :exercise_2%>
#         <%= exe.text_field :name%><br>
    
#         <%= exe.label :exercise_3%>
#         <%= exe.text_field :name%><br>
    
#         <%= exe.label :exercise_4%>
#         <%= exe.text_field :name%><br> %>

#     <% end%>