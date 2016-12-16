class Thought < ApplicationRecord
belongs_to :users, optional: true
end
