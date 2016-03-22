class Event < ActiveRecord::Base
  attr_accessible :what, :where, :when
end