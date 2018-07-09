require 'rails_helper'

describe 'current user' do
  describe 'visits song show' do
    it 'should see the title and length of the song' do
      artist = Artist.create(name: 'Polyphonic Spree')
      song = artist.songs.create!(title: 'Light to Follow', length: 2332, play_count: 121243)

      visit song_path(song)

      expect(page).to have_content(song.title)
      expect(page).to have_content(song.length)
    end
  end
end
