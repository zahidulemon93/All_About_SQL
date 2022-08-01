CREATE TABLE #AvgTemperatures(
   id     INTEGER  NOT NULL 
  ,city   VARCHAR(11) NOT NULL
  ,[avg]    INTEGER  NOT NULL
  ,months INTEGER  NOT NULL
);

INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (1,'New-York',20,3);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (2,'New-York',19,6);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (3,'New-York',15,12);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (4,'New-York',15,24);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (5,'Boston',13,3);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (6,'Boston',18,8);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (7,'Boston',17,12);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (8,'Boston',16,15);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (9,'Chicago',12,2);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (10,'Chicago',14,12);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (11,'Miami',28,1);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (12,'Miami',25,4);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (13,'Miami',21,12);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (14,'Miami',22,15);
INSERT INTO #AvgTemperatures(id,city,avg,months) VALUES (15,'Miami',20,24);
