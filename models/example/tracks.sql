{{ config(materialized='table') }}

select id, 
    "name" as song_title,
    to_date(release_date,'YYYY-MM-DD') as release_date,
    cast(popularity as integer),
    duration_ms,
    case when "explicit" = 0 then FALSE
      when "explicit" = 1 then TRUE
      else null
      end as "explicit",
    string_to_array(regexp_replace(artists, '\[|\]|''|""', '', 'g'), ',') as artists,
    string_to_array(regexp_replace(id_artists, '\[|\]|''|""', '', 'g'), ',') as id_artists,
    danceability,
    energy,
    loudness as decibels,
    speechiness,
    acousticness,
    instrumentalness,
    liveness,
    valence,
--    key,
--    mode,
    tempo as beats_per_minute,
    time_signature
from raw.tracks