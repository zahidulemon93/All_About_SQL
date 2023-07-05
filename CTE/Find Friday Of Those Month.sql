	-- Find Friday Of Those Month
	;with dates as
	(
		select dateadd(month,MONTH('2022-10-30')-1,dateadd(year,YEAR('2022-10-30')-1900,0)) as StartDate
		union all
		select startdate + 1 from dates where month(startdate+1) = MONTH('2022-10-30')
	)
	select  * from dates where datepart(dw,StartDate) = 6 and StartDate <= '2022-10-30'
