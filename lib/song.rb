require 'pry'
class Song
	attr_reader :name, :artist, :genre

	@@all = []
	@@count = 0 	# hack for the test to run

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@all.push(self)
		# @@count += 1
	end

	def self.count
		# puts 'count: ' + @@count.to_s
		@@all.length
		# @@all.each do |song|
		# 	p song.artist + ' - ' + song.name
		# end
	end

	def self.artists
		output = []
		@@all.each do |song|
			output.push(song.artist)
		end
		output = output.uniq
		output
	end

	def self.genres
		output = []
		@@all.each do |song|
			output.push(song.genre)
		end
		output = output.uniq
		output
	end

	def self.genre_count
		output = {}
		@@all.each do |song|
			output[song.genre] ||= 0
			output[song.genre] += 1
		end
		output
	end

	def self.artist_count
		output = {}
		@@all.each do |song|
			output[song.artist] ||= 0
			output[song.artist] += 1
		end
		output		
	end
# binding.pry

end

# mysong = Song.new('thename','theartist','thegenre')
# mysong2 = Song.new('thename','theartist','thegenre')

# binding.pry

