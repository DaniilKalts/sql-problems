-- 3475. DNA Pattern Recognition
-- https://leetcode.com/problems/dna-pattern-recognition/description/

SELECT
    sample_id,
    dna_sequence,
    species,
    (dna_sequence ~ '^ATG')::int AS has_start,
    (dna_sequence ~ '(TAA|TAG|TGA)$')::int AS has_stop,
    (dna_sequence LIKE '%ATAT%')::int AS has_atat,
    (dna_sequence ~ 'G{3,}')::int AS has_ggg
FROM
    Samples;
