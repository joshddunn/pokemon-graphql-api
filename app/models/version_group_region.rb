class VersionGroupRegion < ApplicationRecord
  belongs_to :version_group, foreign_key: :version_group_id
  belongs_to :region, foreign_key: :region_id
end
