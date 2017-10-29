class MoveMetaAilmentName < ApplicationRecord
  belongs_to :move_meta_ailment, foreign_key: :move_meta_ailment_id
  belongs_to :language, foreign_key: :local_language_id
end
