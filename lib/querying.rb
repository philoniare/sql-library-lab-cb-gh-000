



def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE books.series_id=1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY length(motto) DESC LIMIT 1;"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM (authors INNER JOIN series ON author_id=authors.id) INNER JOIN subgenres ON author_id=subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT title from series, characters WHERE series_id=series.id AND species='human' GROUP BY title ORDER BY COUNT(characters.id) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, book_count FROM characters, (SELECT character_id, COUNT(book_id) as book_count FROM character_books GROUP BY character_id) AS char_books WHERE characters.id=char_books.character_id ORDER BY book_count DESC, name;"
end
