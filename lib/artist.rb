require 'pry'
require_relative "song.rb"

class Artist

    attr_accessor :name

    def initialize(name)
        @name = name   #initialize and artist with their name
    end


    def add_song(song_object)
        song_object.artist = self
       
    end                    
                           
    def songs             
        Song.all.select{|song| song.artist == self}
    end                    
                            
    def self.song_count
        Song.all.count
      end
                             
    def add_song_by_name(name)
     song = Song.new(name)  
     song.artist = self            
    end



end
