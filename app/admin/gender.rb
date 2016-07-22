ActiveAdmin.register Gender do

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

permit_params :descripcion,:family_id
form do |f|
    f.inputs 'Genero' do
        f.input :family,:label => 'Familia', as: :select, :collection => Family.all.map{|u| [u.descripcion, u.id]}
        f.input :descripcion
    end
    
end
end
