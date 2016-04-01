class Book < ActiveRecord::Base

  validates :title, :presence => true,
                    :length => { :minimum => 5, :maximum => 100 }

  scope :last_five, -> { all.order(:created_at).last(5).reverse }

end
