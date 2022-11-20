ActiveAdmin.register College do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :city, :contact_no, :contact_email,college_eligibility_criterium_attributes: [:minimum_eligibility_percentage, :year ] ,images_attributes: [:image]


  form do |f|
    f.inputs
    f.inputs "Images" do
      f.has_many :images, heading: false, allow_destroy: true do |cd|
        # hint = image_tag(cd.object.image.url) if cd.object.image.url
        # cd.input :image, as: :file, :hint => hint
      end
    end

    f.inputs "Eligibility Criteria" do
      f.has_many :college_eligibility_criterium, heading: false , allow_destroy: true do |cd|
        cd.input :minimum_eligibility_percentage
        cd.input :year

      end
    end
    f.actions
  end

  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :city, :contact_no, :contact_email]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
