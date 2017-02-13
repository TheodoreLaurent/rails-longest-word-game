require 'longest_word.rb'

class LongestController < ApplicationController

  def game
    @grid_size = 10
    @grid = generate_grid(@grid_size)

  end

  def score
    @grid = params[:grid]
    @attempt = params[:attempt]
    @start_time = Time.parse(params[:start])
    @end_time = Time.now

    @answer = run_game(@attempt, @grid, @start_time, @end_time)
    # raise
  end
end
