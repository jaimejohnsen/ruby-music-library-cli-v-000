describe 'Findable Songs' do
  describe ".find_by_name" do
    it 'finds a song instance in @@all by the name property of the song' do
      song = Song.new("In the Aeroplane over the Sea")
      song.save

      expect(Song.find_by_name("In the Aeroplane over the Sea")).to eq(song)
    end
  end

  describe ".find_or_create_by_name" do
    it 'finds or creates a song by name maintaining uniqueness of objects by their name property' do
      song_1 = Song.find_or_create_by_name("In the Aeroplane over the Sea")
      song_2 = Song.find_or_create_by_name("In the Aeroplane over the Sea")

      expect(song_1).to be_a(Song)
      expect(song_1).to eq(song_2)
      expect(song_1.name).to eq("In the Aeroplane over the Sea")
    end
  end
end
