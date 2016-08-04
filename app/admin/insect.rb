ActiveAdmin.register Insect do

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

permit_params :id,:nombre,:genero,:especie,:order_id,:family_id,:gender_id,:descripcion_biologica,:cover,:modelo,
images_attributes: [:id,:insect_id,:part_id,:nota,:cover, :_destroy, :_create, :_update],
ubications_attributes: [:id,:insect_id,:longitud,:latitud, :_destroy, :_create, :_update],
biome_insects_attributes: [:id,:insect_id,:biome_id, :_destroy, :_create, :_update]
    index do
      column :gender
      column :especie
      column :descripcion_biologica
      actions
    end
    form do |f|
      f.semantic_errors # shows errors on :base
        f.inputs "Informacion del insecto" do
        f.input :gender,:label => 'Genero', as: :select, :collection => Gender.all.map{|u| [u.descripcion, u.id]}
        f.input :especie
        f.input :descripcion_biologica
        f.input :cover, :as => :file
      end
       f.inputs "Extras" do
          f.has_many :images, heading: 'Imagenes',new_record: true, allow_destroy: true do |a|
            a.input :part_id ,:label => 'Parte del insecto', as: :select, :collection => Part.all.map{|u| [u.descripcion, u.id]}
            a.input :nota
            a.input :cover, :as => :file, :hint => a.template.image_tag(a.object.cover.url(:mediano))
          end
        end
        f.inputs "Extras" do
          f.has_many :ubications, heading: 'Ubicaciones', allow_destroy: true, new_record: true do |a|
            if !a.object.nil?
              a.input :latitud
              a.input :longitud
            end
          end
        end
        f.inputs "Biomas" do
          f.has_many :biome_insects, heading: 'Bioma', allow_destroy: true, new_record: true do |a|
            if !a.object.nil?
              a.input :biome_id ,:label => 'bioma', as: :select, :collection => Biome.all.map{|u| [u.descripcion, u.id]}
            end
          end
        end
        render "partials/mapas", layout: "active_admin"
        
      f.actions
    end
end
