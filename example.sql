-- Author.all

SELECT *
FROM authors;


-- Author.find(11)

SELECT *
FROM authors
WHERE id=11;


-- Author.where("id BETWEEN 10 AND 13").all

SELECT *
FROM authors
WHERE id BETWEEN 10 AND 13;


-- Author.joins(:surveys).
--        select("authors.*, surveys.title AS title").
--        order("authors.id").
--        all

SELECT authors.name AS name, surveys.title AS title
FROM authors JOIN surveys ON authors.id = surveys.author_id
ORDER BY authors.id;


-- Question.where(question_type: "Choice").all.map &:question_text

SELECT question_text
FROM questions
WHERE question_type = "Choice";


-- Question.order(created_at: :desc).offset(1).first

SELECT *
FROM questions
ORDER BY created_at DESC
LIMIT 1
OFFSET 1;


-- Question.select("question_type, max(created_at) AS max_time").
--    group(:question_type).
--    order("max(created_at) DESC").all

SELECT question_type, max(created_at)
FROM questions
GROUP BY question_type
ORDER BY count(*);


-- Author.joins("LEFT JOIN surveys ON authors.id = surveys.author_id").
--       select("authors.*, surveys.title AS survey_title").
--       order(:id).all

SELECT *
FROM authors LEFT JOIN surveys ON authors.id = surveys.author_id
ORDER BY authors.id;


-- Author.joins("LEFT JOIN surveys ON authors.id = surveys.author_id").
--       order(:id).where("surveys.id IS NULL").all

SELECT *
FROM authors LEFT JOIN surveys ON authors.id = surveys.author_id
WHERE surveys.id IS NULL
ORDER BY authors.id;
