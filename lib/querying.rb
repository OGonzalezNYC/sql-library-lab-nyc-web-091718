def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN series ON series.author_id = authors.id JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN books ON books.series_id = series.id JOIN character_books ON character_books.book_id = books.id  JOIN characters ON characters.id = character_books.character_id WHERE species = 'human' GROUP BY series.title ORDER BY COUNT(species) DESC LIMIT 1;"
   # GROUP BY characters.species ;"
end

def select_character_names_and_number_of_books_they_are_in
   "SELECT characters.name, COUNT(characters.name) FROM characters JOIN character_books ON characters.id = character_books.character_id GROUP BY characters.name ORDER BY COUNT(characters.name) DESC;"
  # "SELECT characters.name, COUNT(*) as book_count
  #   FROM character_books
  #   JOIN characters
  #   ON character_books.character_id = characters.id
  #   GROUP BY characters.name
  #   ORDER BY book_count DESC;"
end


# CREATE TABLE series  (id INTEGER PRIMARY KEY, title TEXT, author_id INTEGER, subgenre_id INTEGER);
# CREATE TABLE subgenres (id INTEGER PRIMARY KEY, name TEXT);
# CREATE TABLE authors (id INTEGER PRIMARY KEY, name TEXT);
# CREATE TABLE books (id INTEGER PRIMARY KEY, title TEXT, year INTEGER, series_id INTEGER);
# CREATE TABLE characters (id INTEGER PRIMARY KEY, name TEXT, motto TEXT, species TEXT, author_id INTEGER, series_id INTEGER);
# CREATE TABLE character_books (id INTEGER PRIMARY KEY, book_id INTEGER, character_id INTEGER);
