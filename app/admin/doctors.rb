ActiveAdmin.register Doctor do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs "Doctor Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  
  controller do
    def permitted_params
      params.permit doctor: [:email, :password, :password_confirmation]
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
