# == Schema Information
#
# Table name: labels
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Label < ApplicationRecord
  has_many :vinyls
end
