{{ config(materialized='table') }}

select title as song_title,
  artist,
  "top genre" as top_genre,
  cast(year as integer),
  "beats.per.minute" as beats_per_minute,
  energy,
  danceability,
  "loudness.dB" as decibels,
  liveness,
  valance as valence,
  length as seconds,
  acousticness,
  speechiness,
  cast(popularity as integer)
from raw.top_100