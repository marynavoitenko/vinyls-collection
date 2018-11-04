# == Schema Information
#
# Table name: crates
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Crate < ApplicationRecord
    has_many :vinyls
end
