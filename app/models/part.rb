class Part
  include Mongoid::Document
  field :name
  field :img #encode64 rep of the img in raw text

  validates :name, inclusion: { in: [ "head", "torso", "legs", "feet" ] }

  scope :head,  -> { where(name: 'head' )}
  scope :torso, -> { where(name: 'torso')}
  scope :legs,  -> { where(name: 'legs' )}
  scope :feet,  -> { where(name: 'feet' )}
end
