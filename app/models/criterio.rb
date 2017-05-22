class Criterio < ApplicationRecord
  has_many :Julgamentos, :dependent => :delete_all
  has_many :JulgamentoCriterios, foreign_key: "criterio_1_id", :dependent => :delete_all
  has_many :JulgamentoCriterios, foreign_key: "criterio_2_id", :dependent => :delete_all
end
