class AudioController < ApplicationController
  require 'tts'

  def play
    params[:text].to_s.play 'es'
  end
end
