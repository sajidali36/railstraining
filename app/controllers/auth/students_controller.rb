class Auth::StudentsController < ApplicationController
  def index
  end

  def show
    redirect_to students_path
  end
end
