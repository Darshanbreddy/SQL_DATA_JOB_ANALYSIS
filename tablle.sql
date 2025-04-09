INSERT INTO job_applied (
        job_id,
        application_sent_date,
        custom_resume,
        resume_name,
        cover_letter,
        cover_letter_name,
        status
    )
VALUES (
        1,
        '2025-04-01',
        TRUE,
        'resume_job1.pdf',
        TRUE,
        'cover_letter_job1.pdf',
        'Applied'
    ),
    (
        2,
        '2025-04-02',
        FALSE,
        'resume_job2.pdf',
        FALSE,
        NULL,
        'In Review'
    ),
    (
        3,
        '2025-04-03',
        TRUE,
        'custom_resume3.pdf',
        TRUE,
        'custom_cover3.pdf',
        'Interview'
    ),
    (
        4,
        '2025-04-04',
        TRUE,
        'resume_job4.pdf',
        FALSE,
        NULL,
        'Rejected'
    ),
    (
        5,
        '2025-04-04',
        FALSE,
        'resume_job5.pdf',
        TRUE,
        'cover_letter5.pdf',
        'Offer'
    );
SELECT *
from job_applied;
ALTER TABLE job_applied
add contact VARCHAR(50);
UPDATE job_applied
SET contact = 'John Doe'
WHERE job_id = 1;
UPDATE job_applied
SET contact = 'Jane Smith'
WHERE job_id = 2;
UPDATE job_applied
SET contact = 'Mike Brown'
WHERE job_id = 3;
UPDATE job_applied
SET contact = 'Sara Jones'
WHERE job_id = 4;
UPDATE job_applied
SET contact = 'Alex Taylor'
WHERE job_id = 5;
ALTER TABLE job_applied
    RENAME COLUMN contact TO contact_name;
ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;
ALTER TABLE job_applied DROP COLUMN contact_name;
DROP TABLE job_applied;