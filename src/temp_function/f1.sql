drop function public.get_seniority;

CREATE OR REPLACE FUNCTION public.get_seniority(tenure integer) RETURNS text LANGUAGE plpgsql AS 
$function$ 
declare 
    res text; 
begin
    SELECT  CASE WHEN tenure < 1 THEN 'analyst'
                WHEN tenure BETWEEN 1 AND 3 THEN 'associate'
                WHEN tenure BETWEEN 3 AND 5 THEN 'senior'
                WHEN tenure > 5 THEN 'vp'  ELSE 'n/a' END into res; 
    return res; 
END; 
$function$
;

