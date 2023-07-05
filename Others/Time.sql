	       DECLARE @CurrentTime TIME
         SET @CurrentTime = CONVERT(TIME, GETDATE())
	     
         IF @CurrentTime BETWEEN '07:00:00' AND '11:00:00'
         BEGIN
	     	 	SELECT 'Parsing' AS HaveRows 
         END
