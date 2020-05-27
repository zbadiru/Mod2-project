class PersonalTrainersController < ApplicationController
    def index
        @personal_trainers = PersonalTrainer.all
    end
    
    def show
        @personal_trainer = PersonalTrainer.find(params[:id])
    end
    
    def new
        @personal_trainer = PersonalTrainer.new
    end
    
    def create
        @personal_trainer = PersonalTrainer.create(personal_trainer_params)
        redirect_to @personal_trainer
    end
    
    def edit
        @personal_trainer = PersonalTrainer.find(params[:id])
    end
    
    def update
        @personal_trainer = PersonalTrainer.find(params[:id])
    
        @personal_trainer.update(personal_trainer_params)
    
        redirect_to personal_trainer_path(@personal_trainer.id)
    end
    def destroy
        PersonalTrainer.destroy(params[:id])
    
        redirect_to personal_trainers_path
    end
    
    
    private
    
    def personal_trainer_params
        params.require(:personal_trainer).permit(:name, :age, :expirience)
    end
end
