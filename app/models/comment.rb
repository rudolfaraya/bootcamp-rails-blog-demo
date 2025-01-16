class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user, inverse_of: :comments, required: true

  broadcasts_to :article
end
