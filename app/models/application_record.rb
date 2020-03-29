# frozen_string_literal: true

# base model parent
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
