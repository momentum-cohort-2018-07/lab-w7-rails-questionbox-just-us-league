class VotesController < ApplicationController
  def create
    if current_user
      @vote = Vote.where(user_id: current_user.id, answer_id: params[:vote][:answer_id])[0]
      
      if @vote
        @vote.update(params.require(:vote).permit(:value, :user_id, :answer_id))
      else
        @vote = Vote.new(params.require(:vote).permit(:value, :user_id, :answer_id))
        @vote.save
      end
    end
  end
end
