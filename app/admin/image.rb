ActiveAdmin.register Image do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :nota, :cover

  form do |f|
    f.inputs "Project Details" do
      f.input :nota
      f.input :cover, :as => :file, :hint => f.template.image_tag(f.object.cover.url(:mediano))
    end
    f.actions
  end

end
