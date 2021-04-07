class VotesController < ApplicationController

  def create

    @vote = current_user.votes.build(article_id: params[:article_id])
    if @vote.save
      redirect_to root_path
      flash[:notice] = 'You Voted this article'
    else
      redirect_to root_path
      flash[:notice] = 'Somthing happened'
    end
  end

  def destroy
    vote = Vote.find_by(user: current_user, article_id: params[:article_id])
    
    if vote
      vote.destroy
      redirect_to categories_path
      flash[:notice] = 'You Unvoted this article'
    else
      redirect_to root_path
      flash[:notice] = 'somthing happened'
    end
  end
end
