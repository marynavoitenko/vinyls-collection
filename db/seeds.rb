# frozen_string_literal: true

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'vinyls_collection.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  # get all values of artists_tracks columns for the row
  artists_tracks = row.find_all do |i|
    i[0] == 'artists_names_track_title' && !i[1].nil?
  end.map(&:last)

  # build tracks_attributes
  tracks_attributes = artists_tracks.map do |artists_track|
    artists, track = artists_track.split('-').map(&:strip)
    artists = artists.split(',').map(&:strip)

    artists_attributes = artists.map do |artist|
      { name: artist }
    end

    {
      title: track,
      artists_attributes: artists_attributes
    }
  end

  release_date = Date.strptime(row['vinyl_release_date'], '%m/%d/%Y')

  vinyl_params = {
    code: row['vinyl_code'],
    title: row['vinyl_title'],
    release_date: release_date,
    label_attributes: {
      name: row['label_name']
    },
    genres_attributes: [
      { name: row['genre_name'] }
    ],
    tracks_attributes: tracks_attributes
  }

  Vinyl.create(vinyl_params)
end

p "Created #{Label.count} labels"
p "Created #{Vinyl.count} vinyls"
p "Created #{Track.count} tracks"
p "Created #{Artist.count} artists"
p "Created #{Genre.count} genres"
