class CollegesController < InheritedResources::Base

  private

    def college_params
      params.require(:college).permit(:name, :description, :city, :contact_no, :contact_email, reviews_attributes: [:review_comment, :review_matrix])
    end

end
