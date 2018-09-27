-- UPDATE characters SET species = 'Martian' WHERE species = 'cylon';
UPDATE characters SET species = 'Martian' WHERE id = (SELECT MAX(id) FROM characters);
