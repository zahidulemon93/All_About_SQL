--DB Active Connection Count

	SELECT  
			loginame [Login],
			sp.[status],
			sd.name DBName,
			count(*) [count],
			GETDATE() [Collect_Time]
	FROM master.dbo.sysprocesses sp 
	JOIN master.dbo.sysdatabases sd ON sp.dbid = sd.dbid
	where loginame ='your user'
	group by loginame,sp.[status], sd.name
