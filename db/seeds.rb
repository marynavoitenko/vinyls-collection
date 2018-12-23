# frozen_string_literal: true

label1 = Label.create(name: 'Innervisions')

vinyl1 = label1.vinyls.create(code: 'IV81', name: 'Love Song')
vinyl1_tracks1 = vinyl1.tracks.create(
  [{ title: 'Love Song' },
   { title: 'Love Dub' },
   { title: 'Listen To Charanjit' }]
)

artist1 = vinyl1.artists.create(name: 'Marcus Worgull')

vinyl1_tracks1.each do |track|
  track.artists << artist1
end

vinyl1.genres.create(name: 'Minimal/Tech House')

vinyl2 = label1.vinyls.create(code: 'IV82', name: 'Romantico Disco EP')
vinyl2_track1 = vinyl2.tracks.create(title: 'Babilonia')
vinyl2_track2 = vinyl2.tracks.create(title: 'Velluto Blu')
vinyl2_track3 = vinyl2.tracks.create(title: 'Lone Solo Drummer')
vinyl2_track4 = vinyl2.tracks.create(title: 'The Cunning Man')

artist2 = vinyl2.artists.create(name: 'Musumece')
artist3 = vinyl2.artists.create(name: 'Phunkadelica')
vinyl2_track1.artists << artist2
vinyl2_track1.artists << artist3
vinyl2_track2.artists << artist2
vinyl2_track2.artists << artist3

artist4 = vinyl2.artists.create(name: 'Stereocalypse')
vinyl2_track3.artists << artist4
vinyl2_track4.artists << artist4

vinyl2.genres.create(name: 'Disco/Nu-Disco')

p "Created #{Label.count} labels"
p "Created #{Vinyl.count} vinyls"
p "Created #{Track.count} tracks"
p "Created #{Artist.count} artists"
p "Created #{Genre.count} genres"
