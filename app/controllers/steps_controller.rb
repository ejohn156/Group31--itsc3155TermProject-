class StepsController < ApplicationController
    def create
        @exercise = Exercise.find(params[:exercise_id])
        @step = @exercise.steps.create(step_params)
        redirect_to exercise_path(@exercise)
    end
    
    private 
        def step_perams
            params.require(:step).permit(:reps, :weight, :notes)
        end
end
