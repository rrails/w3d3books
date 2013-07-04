# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  author_name :string(255)
#  genre       :string(255)
#  image       :text
#  author_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Book < ActiveRecord::Base
    attr_accessible :title, :author_name, :genre, :image, :author_id
    belongs_to :author
end
