class WelcomeController < ApplicationController
  def index
    @array = ["this", "that", "the other"]
    @hash_list = Hash.new()
    10.times do |i|
        sym = i
        @hash_list[i] = i*2
    end
  end
end
