require "prison_parser/version"
require "forwardable"
require "treetop"
require "prison_save"
require "awesome_print"

module PrisonParser
  class Prison
    attr_reader :tree

    extend Forwardable

    def_delegators :tree, :[]

    def initialize(string)
      parser = PrisonSaveParser.new

      raise parser.failure_reason unless (result = parser.parse string)

      @tree = result.value
    end
  end
end
