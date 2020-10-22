class Tag < ApplicationRecord
    has_many :gossips, through :gossiptags
end
