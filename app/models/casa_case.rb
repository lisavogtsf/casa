class CasaCase < ApplicationRecord
  has_paper_trail

  belongs_to :volunteer, class_name: "User", inverse_of: :casa_cases
end

# == Schema Information
#
# Table name: casa_cases
#
#  id                    :bigint           not null, primary key
#  case_number           :string           not null
#  teen_program_eligible :boolean          default(FALSE), not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  volunteer_id          :bigint
#
# Indexes
#
#  index_casa_cases_on_case_number   (case_number) UNIQUE
#  index_casa_cases_on_volunteer_id  (volunteer_id)
#
