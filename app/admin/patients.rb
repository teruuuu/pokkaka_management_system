ActiveAdmin.register Patient do
  permit_params :user_id, :name, :birthday, :gender, :address, :degree_of_care, :key_person

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :birthday, :gender, :address, :degree_of_care, :key_person, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :birthday, :gender, :address, :degree_of_care, :key_person, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :user_id
      f.input :name
      f.input :birthday
      f.input :gender
      f.input :address
      f.input :degree_of_care
      f.input :key_person
      f.actions
    end
  end
end
