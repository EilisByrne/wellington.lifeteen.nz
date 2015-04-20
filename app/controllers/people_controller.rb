class PeopleController < ApplicationController
  def index
    @people_by_role = Person.people_by_role
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_path
    else
      render 'new'
    end
  end

  def show_avatar
    @person = Person.find(params[:id])
    style = params[:style]
    send_data @person.avatar.file_contents(style), :type => @person.avatar_content_type
  end

  private

  def person_params
    params.require(:person).permit(:name, :avatar, :role_id, :description)
  end
end
