class Recipe < ActiveRecord::Base

  validates :title, :presence => true,
                    :length => { :minimum => 10, :maximum => 70 }

  scope :last_ten, -> { all.order(:created_at).last(10).reverse }

end
