# frozen_string_literal: true

require_relative 'dog'

class Lab < SimpleDelegator
  def color
    'brown'
  end
end
