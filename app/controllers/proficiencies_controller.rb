class ProficienciesController < ApplicationController

  def index
    @proficiencies = current_user.proficiencies
  end

  def new
    @proficiency = Proficiency.new
    @proficiencies = current_user.proficiencies
  end

  def create
    @proficiency = current_user.proficiencies.new(proficiency_params)
    if !@proficiency.save
      render nothing: true
    end
  end

  def edit
    @proficiency = find_proficiency
  end

  def update
    @proficiency = find_proficiency
    @proficiency.update(proficiency_params)
    redirect_to user_proficiencies_path
  end

  def destroy
    @proficiency = find_proficiency
    @proficiency.destroy
    redirect_to user_proficiencies_path
  end

  private

  def proficiency_params
    params.require(:proficiency).permit(:level, :skill_id)
  end

  def find_proficiency
    current_user.proficiencies.find(params[:id])
  end

end
