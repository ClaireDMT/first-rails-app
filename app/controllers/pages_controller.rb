class PagesController < ApplicationController
  def home
  end

  def about
    raise
  end

  def contact
    @teachers = ['Leon', 'Remi', 'Toni', 'Alex']
    if params[:member].present?
      @teachers = @teachers.select { |teacher| teacher == params[:member]}
    end

    # tomorrow we fetch the teachers in DB with Active Record
  end
end
