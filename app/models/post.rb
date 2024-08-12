class Post < ApplicationRecord
  belongs_to :author, polymorphic: true
end
