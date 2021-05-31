class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @subject = Subject.find(params[:id])
  end

  # display the form
  def new
    @subject = Subject.new
  end

  # creates the form in the db
  def create
    # Instantiate a new object using form parameters
    subject_params
    @subject = Subject.new(subject_params)
    # Save the object
    if @subject.save
      # If save succeeds, redirect ot the index action
      redirect_to(subjects_path)
    else
      # If save fails, redisplay the for so user can fix the problems
      render('new')
    end

  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to(subject_path(@subject))
    else
      redirect_to('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy

    redirect_to(subjects_path)
  end

  private
  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end

end
