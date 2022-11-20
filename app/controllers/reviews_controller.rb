class ReviewsController < InheritedResources::Base

  private

    def review_params
      params.require(:review).permit(:college_id, :user_id, :review_matrix, :review_comment)
    end

end
