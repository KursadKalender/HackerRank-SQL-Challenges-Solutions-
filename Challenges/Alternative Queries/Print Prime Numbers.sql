SET @prime = 1;
SET @divisor = 1;

SELECT GROUP_CONCAT(a SEPARATOR '&') 
FROM
    (SELECT @prime := @prime + 1 AS a       
    FROM information_schema.tables t1, information_schema.tables t2             
    LIMIT 1000) list_of_potential_primes
WHERE NOT EXISTS (
    SELECT * FROM
        (SELECT @divisor := @divisor + 1 AS b 
        FROM information_schema.tables t3, information_schema.tables t4
        LIMIT 1000) list_of_divisors
    WHERE MOD(a, b) = 0 AND a != b);
