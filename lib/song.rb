require 'pry'
require_relative "./concerns/memorable"
require_relative "./concerns/findable"

class Song
extend Memorable::ClassMethods , Findable
include Paramable , Memorable::InstanceMethods


  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  def self.all
    @@songs
  end
 
  def artist=(artist)
    @artist = artist
  end
  
end

pp Song.find_by_name("sky fall")
