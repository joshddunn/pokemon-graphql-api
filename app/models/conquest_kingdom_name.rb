class ConquestKingdomName < ApplicationRecord
  belongs_to :conquest_kingdom, foreign_key: :kingdom_id
  belongs_to :language, foreign_key: :local_language_id
end
