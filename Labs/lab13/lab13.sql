.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest HAVING count(*) <= 1 ORDER BY smallest ASC;


CREATE TABLE matchmaker AS
  SELECT a.pet as pet, a.song as song, a.color as color_first, b.color as color_second FROM students AS a, students AS b WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT a.seven FROM students AS a, numbers AS b WHERE a.time = b.time AND a.number = 7 AND b.'7' = 'True';


CREATE TABLE avg_difference AS
  SELECT ROUND(AVG(ABS(number - smallest))) as avg_diff FROM students;

