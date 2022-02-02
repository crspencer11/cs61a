.read data.sql


CREATE TABLE bluedog AS
  SELECT "color" AS color, "pet" AS pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT "color" AS color, "pet" AS pet, "song" AS song FROM students AS s WHERE color = "blue" AND pet = "dog" AND song = s.song;


CREATE TABLE matchmaker AS
  SELECT s.pet, s.song, s.color, t.color FROM students AS s, students AS t WHERE s.pet = "dog" AND t.pet = "dog" AND s.song = t.song AND s.time < t.time;


CREATE TABLE sevens AS
  SELECT s.seven FROM students AS s, numbers AS n WHERE s.number = 7 AND n."7" = "True" AND s.time = n.time;


CREATE TABLE favpets AS
  SELECT pet, COUNT(*) FROM students GROUP BY pet HAVING COUNT(*) > 2 ORDER BY COUNT(*) DESC;


CREATE TABLE dog AS
  SELECT pet, COUNT(*) FROM students WHERE pet = "dog";


CREATE TABLE bluedog_agg AS
  SELECT song, COUNT(*) FROM bluedog_songs GROUP BY song HAVING COUNT(*) > 0 ORDER BY COUNT(*) DESC;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, COUNT(*) FROM students WHERE seven = "7" GROUP BY instructor;


CREATE TABLE smallest_int_having AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";


CREATE TABLE smallest_int_count AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";

