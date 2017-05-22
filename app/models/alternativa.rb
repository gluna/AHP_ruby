class Alternativa < ApplicationRecord
  has_many :Julgamento, foreign_key: "alternativa_1_id", :dependent => :delete_all
  has_many :Julgamento, foreign_key: "alternativa_2_id", :dependent => :delete_all
end
