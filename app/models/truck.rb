# == Schema Information
#
# id         :integer       not null, primary key
# applicant  :string
# address    :string
# status     :string
# fooditems  :string
# dayshours  :string
# latitude   :float
# longitude  :float
# created_at :datetime      not null
# updated_at :datetime      not null

class Truck < ApplicationRecord
end
