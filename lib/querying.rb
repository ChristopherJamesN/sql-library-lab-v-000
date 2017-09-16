def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
  FROM books
  WHERE series_id == 1
  ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto AS mlen
   FROM characters
   ORDER BY
   LENGTH(mlen) DESC
   LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(name) FROM characters WHERE species == 'human'"
end

def select_name_and_series_subgenres_of_authors
  "
  SELECT authors.name, subgenres.name
  FROM authors
  INNER JOIN series
  ON series.author_id = authors.id
  INNER JOIN subgenres
  ON series.subgenre_id = subgenres.id
  ;"
end

def select_series_title_with_most_human_characters
  "
  SELECT title
  FROM series
  INNER JOIN characters
  ON characters.series_id = series.id
  LIMIT 1
  ;"
end

def select_character_names_and_number_of_books_they_are_in
  "
  SELECT characters.name, COUNT(character_books.character_id)
  FROM characters
  INNER JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(character_books.character_id) DESC
  ;"
end
