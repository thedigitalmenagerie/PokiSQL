-- 1. What grades are stored in the database? --
/* select Name [Grades Stored in Database]
from Grade */
-- 2. What emotions may be associated with a poem?--
/* select Name [Emotions Associated With Database Poems]
from Emotion */
-- 3. How many poems are in the database?--
/* select count(*) [Number of Poems in Database]
from Poem */
-- 4. Sort authors alphabetically by name. What are the names of the top 76 authors?--
/* select TOP (76) [Name] [Top 76 Authors Alphabetically]
from Author
order by [Name] ASC */
-- 5. Starting with the above query, add the grade of each of the authors.--
select TOP (76) Author.Name [Top 76 Authors Alphabetically], Gender.Name [Author's Gender]
from Author
	join Gender on Author.GenderId = Gender.Id
order by Author.Name ASC
-- 6. Starting with the above query, add the recorded gender of each of the authors.--
-- 7. What is the total number of words in all poems in the database?--
-- 8. Which poem has the fewest characters?--
-- 9. How many authors are in the third grade?--
-- 10. How many authors are in the first, second or third grades?--
-- 11. What is the total number of poems written by fourth graders?--
-- 12. How many poems are there per grade?--
-- 13. How many authors are in each grade? (Order your results by grade starting with `1st Grade`)--
-- 14. What is the title of the poem that has the most words?--
-- 15. Which author(s) have the most poems? (Remember authors can have the same name.)--
-- 16. How many poems have an emotion of sadness?--
-- 17. How many poems are not associated with any emotion?--
-- 18. Which emotion is associated with the least number of poems?--
-- 19. Which grade has the largest number of poems with an emotion of joy?--
-- 20. Which gender has the least number of poems with an emotion of fear?--