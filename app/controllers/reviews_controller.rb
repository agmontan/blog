class ReviewsController < ApplicationController


	def create
	 	@review = Review.new(review_params)
	 	if @review.save
	 		redirect_to "/posts/"+@review.post.id.to_s, notice: "Comentario creada exitosamente"
	 	else
	 		redirect_to "/posts/"+@review.post.id.to_s, notice: "Error al crear Comentario"
	 	end
	end

	def review_params
		params.require(:review).permit(:comentario, :post_id, :like)
	end

def like_review
    @review = Review.find(params[:id])
    @review.like =@review.like+1
    @review.save
    redirect_to(:back)

  end

  def dislike_review
      @review = Review.find(params[:id])
    @review.like= @review.like-1
    @review.save
    redirect_to(:back)


  end



end
