# require Rails.root.join('lib', 'rails_admin_balance.rb') 

RailsAdmin.config do |config|

  # module RailsAdmin
  #   module Config
  #     module Actions
  #       class Balance < RailsAdmin::Config::Actions::Base
  #         RailsAdmin::Config::Actions.register(self)
  #       end
  #     end
  #   end
  # end

  ### Popular gems integration
  config.authorize_with :cancan
  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  config.current_user_method(&:current_user)
  config.model Service do
   list do
     field :Product
     field :Description
     field :Est_Delivery
     field :image
     field :amount
     field :international_shipping
     field :created_at
     field :updated_at
     sort_by :amount
   end
  end

  config.model Order do
   list do
     field :id
     field :transaction_id
     field :hno
     field :city
     field :state
     field :zip
     field :country
     field :status
     field :product
     field :quantity
     field :user_id
     field :price
     field :est_delivery
     field :international_shipping
     field :phone
     field :name
   end
  end

  config.model News do
    edit do
      field :title
      field :description, :ck_editor
    end
  end

  config.model Contact do
    edit do
      field :content, :ck_editor
    end
  end

  config.model Presskit do
    edit do
      field :data, :ck_editor
    end
  end

  config.model Description do
    edit do
      field :title
      field :subtitle
      field :img4
      field :description, :ck_editor
      field :iframe
    end
  end

  config.model Order do
   list do
     field :id
     field :transaction_id
     field :hno
     field :city
     field :state
     field :zip
     field :country
     field :status
     field :product
     field :quantity
     field :user_id
     field :price
     field :est_delivery
     field :international_shipping
     field :phone
     field :name
   end
  end


  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard 
    # do
    #   i18n_key :dash
    # end                  # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    # member :balance do
    #   link_icon 'icon-eye-open'
    #   root? true
    # end

    # balance do
    #   visible do
    #     # bindings[:abstract_model].model.to_s == "User"
    #     link_icon 'icon-eye-open'
    #     # root? true
    #   end
    # end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

end
