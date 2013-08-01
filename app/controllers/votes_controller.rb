class VotesController < ApplicationController

  def create
    @vote = Vote.new(params[:vote])
  end

  def show

  end
end
