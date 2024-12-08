require_relative 'game'
require 'colorize'

class Board # rubocop:disable Style/Documentation
  attr_reader :board

  def initialize(chances)
    @board = Array.new(chances, %w[| - - - - | - - - -])
  end

  def draw_board
    @board.each { |row| puts row.join(' ') }
  end

  def draw_line(guess_code, feedback, round)
    @board[round] = ["| #{colorize_code(guess_code).join(' ')} | #{feedback.join(' ')}"]
  end

  private

  def colorize_code(code)
    code.map { |color| 'O'.colorize(color.to_sym) }
  end
end
