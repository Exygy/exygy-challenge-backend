# == Schema Information
#
# Table name: documents
#
#  id            :integer          not null, primary key
#  name          :string
#  title         :string
#  modified_by   :string
#  last_modified :date
#  status        :string
#  country       :string
#  stared        :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
