USE student;

SELECT id
FROM st
WHERE major = 'computer' AND id IN (
    SELECT id
    FROM enroll
    WHERE ccode = 11 AND grade <= 12
    GROUP BY id
    HAVING COUNT(*) >= 3
);