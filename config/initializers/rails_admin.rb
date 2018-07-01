RailsAdmin.config do |config|
  ### Popular gems integration
  config.main_app_name = ["Vape Shop", "Clouds"]
  ## == Devise ==

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  
  config.authorize_with do
    if user_signed_in?
      redirect_to main_app.root_path unless current_user.try(:admin?)
    end
  end
  
  # config.current_user_method(&:current_user)
  # config.current_user_method { current_admin }

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    # show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  # config.model Product do
  #   edit do
  #     field :name
  #     field :description, :rich_editor do
  #      config({
  #         :insert_many => true
  #       })
  #     end
  #     field :image_url, :rich_picker do
  #       config({
  #         :allowed_styles => [:original],
  #         :view_mode => "list"
  #       })
  #     end
  #     field :price
  #     field :slug
  #   end
  # end
end
