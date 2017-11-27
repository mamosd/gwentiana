class Order < ActiveRecord::Base
  belongs_to :user
  # after_action :generate_token, :only => :index
  # scope :completed, -> { where("token != ? OR token != ?", "", nil) }
    
  def self.backers
    Order.all.where("status = ?", true).uniq.pluck(:user_id).count
  end

  def self.revenue
     Order.all.where(:status => true).sum(:price).to_f
  end

  def self.goal
    Settings.project_goal
  end

  def self.percent
    (Order.revenue.to_f / Order.goal.to_f) * 100.to_f
  end
end




 