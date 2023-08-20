DECLARE @Now  datetime, @Dob datetime
SELECT   @Now='1990-05-05', @Dob='1980-05-05'  --results in 10
--SELECT @Now='1990-05-04', @Dob='1980-05-05'  --results in  9
--SELECT @Now='1989-05-06', @Dob='1980-05-05'  --results in  9
--SELECT @Now='1990-05-06', @Dob='1980-05-05'  --results in 10
--SELECT @Now='1990-12-06', @Dob='1980-05-05'  --results in 10
--SELECT @Now='1991-05-04', @Dob='1980-05-05'  --results in 10

SELECT(CONVERT(int,CONVERT(char(8),@Now,112))-CONVERT(char(8),@Dob,112))/10000 AS AgeIntYears, CONVERT(char(8),@Dob,112)
