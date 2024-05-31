{{ config(materialized='table') }}

select id,
  name as song_title,
  cast(followers as bigint),
  cast(popularity as integer),
  string_to_array(regexp_replace(genres, '\[|\]|''|""', '', 'g'), ',') as genres  
from raw.artists