-- connect to DATABASE
\connect loop_interview_db

COPY public.* to ./.scripts/neo4j/import:/import csv header;