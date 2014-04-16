class ProficienciesController < ApplicationController

  def new
    @proficiency = Proficiency.new
    @proficiencies = current_user.proficiencies
  end

  def create
    @proficiency = current_user.proficiencies.create(proficiency_params)
  end

  private

  def proficiency_params
    params.require(:proficiency).permit(:level, :skill_id)
  end

end
