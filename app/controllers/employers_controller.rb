class EmployersController < ApplicationController
  def show
    @employer = Employer.find(params[:id])
    @employer_profile = EmployerProfile.new
  end

  def create
    @employer_profile = EmployerProfile.create(employer_profile_params)
    redirect_to employer_path
  end

  def edit
    @employer_profile = current_user.employer_profile
  end

  def update
    @employer_profile = find_employer_profile
    @employer_profile.update(employer_profile_params)
    redirect_to employer_path
  end

end

private

def employer_profile_params
  params.require(:employer_profile).permit(
    :company_name,
    :company_url,
    :user_id
  )
end

def find_employer_profile
  current_user.employer_profiles.find(params[:id])
end

