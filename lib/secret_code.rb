class SecretCode # rubocop:disable Style/Documentation,Style/FrozenStringLiteralComment
  COLORS_LIST = %i[red green yellow blue cyan magenta grey].freeze

  attr_reader :code

  def initialize
    @code = Array.new(4) { Ball.new(COLORS.sample) }
  end

  def colors
    @code.map(&:color)
  end
end
