require 'tinder'

module Campfire
  module Say
    extend self

    def say(message)
      room.speak(message)
    end

    def paste(message)
      room.paste(message)
    end

    def room
      @room ||= campfire.find_room_by_name(room_name)
    end

    def campfire
      @campfire ||= Tinder::Campfire.new(account, token: token)
    end

    %w(account token room).each do |word|
      define_method(word == 'room' ? 'room_name' : word) do
        name = 'CAMPFIRE_%s' % word.upcase
        if ENV[name].to_s.size == 0
          raise Say::Error, 'missing $%s' % name
        else
          ENV[name]
        end
      end
    end

    class Error < StandardError; end
  end
end
