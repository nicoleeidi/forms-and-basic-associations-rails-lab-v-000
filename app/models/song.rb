class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes
  def artist_name=(name)
    self.artist= Artist.find_or_create_by(name:name)
  end
<<<<<<< HEAD
  def genre_name
    self.genre.name if self.genre
  #  self.try(:genre).try(:name)
  end

=======
<<<<<<< HEAD
>>>>>>> 809084046aaec8b19971f29055ecb8923feb4f94
  def artist_name
    self.artist.name if self.artist
#self.try(:artist).try(:name)
end
def genre_name=(name)
  self.genre= Genre.find_or_create_by(name:name)
end
def note_contents=(notes)
  notes.each do |note|
    if note.strip != ""
      self.notes.build(content:note)
    end
  end
=======
def artist_name
  self.artist.name
end
>>>>>>> a4794d87caca06c09023c25b421861c2718e8503
end
def note_contents
  newarray= self.notes.map do |note|
    note.content
  end
newarray
end
end
