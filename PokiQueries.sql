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

/* select TOP (76) Author.Name [Top 76 Authors Alphabetically], Grade.Name [Author's Grade]
from Author
	join Grade on Author.GradeId = Grade.Id
order by Author.Name ASC */

-- 6. Starting with the above query, add the recorded gender of each of the authors.--

/* select TOP (76) Author.Name [Top 76 Authors Alphabetically], Gender.Name [Author's Gender]
from Author
	join Gender on Author.GenderId = Gender.Id
order by Author.Name ASC */

-- 7. What is the total number of words in all poems in the database?--

/* select sum(WordCount)
from Poem */

-- 8. Which poem has the fewest characters?--

/* select TOP(1) CharCount [Character Count], Title
from Poem
order by CharCount ASC */

-- 9. How many authors are in the third grade?--

/* select count(*) [Number of Authors in 3rd Grade]
from Author
	join Grade on Grade.id = Author.GradeId
	where Grade.Name = '3rd Grade' */

-- 10. How many authors are in the first, second or third grades?--

/* select count(*) [Number of Authors in 1st, 2nd, or 3rd Grade]
from Author
	join Grade on Grade.id = Author.GradeId
	where Grade.Name != '5th Grade' or Grade.Name != '4th Grade'; */

-- 11. What is the total number of poems written by fourth graders?--

/* select count(*) [Number of Poems from 4th Graders]
from Poem
	join Author on Poem.AuthorId = Author.Id
	join Grade on Author.GradeId = Grade.Id
	where Grade.Name = '4th Grade' */

-- 12. How many poems are there per grade?--

/* select Grade.Name [Grade], count(*) [Number of Poems]
from Poem
	join Author on Poem.AuthorId = Author.Id
	join Grade on Author.GradeId = Grade.Id
group by Grade.Name */

-- 13. How many authors are in each grade? (Order your results by grade starting with `1st Grade`)--

/* select Grade.Name, count(*) [Number of Authors]
from Author
	join Grade on Author.GradeId = Grade.Id
group by Grade.Name */

-- 14. What is the title of the poem that has the most words?--

/* select TOP(1) WordCount, Title
from Poem
order by WordCount DESC */

-- 15. Which author(s) have the most poems? (Remember authors can have the same name.)--

select TOP(1) count(Title) [Number of Poems], Name
from Author
	join Poem on Author.Id = Poem.AuthorId
group by Name
order by [Number of Poems] DESC

-- 16. How many poems have an emotion of sadness?--
-- 17. How many poems are not associated with any emotion?--
-- 18. Which emotion is associated with the least number of poems?--
-- 19. Which grade has the largest number of poems with an emotion of joy?--
-- 20. Which gender has the least number of poems with an emotion of fear?--