CREATE TABLE [dbo].[StudentMarks]   
(  
    [StudentId] INT NOT NULL,  
    [SubjectId] INT NOT NULL,  
    [Marks] INT NOT NULL  
)  
  
INSERT INTO [dbo].[StudentMarks] ([StudentId], [SubjectId], [Marks]) VALUES (1, 1, 50)  
INSERT INTO [dbo].[StudentMarks] ([StudentId], [SubjectId], [Marks]) VALUES (1, 2, 80)  
INSERT INTO [dbo].[StudentMarks] ([StudentId], [SubjectId], [Marks]) VALUES (1, 3, 70)  
INSERT INTO [dbo].[StudentMarks] ([StudentId], [SubjectId], [Marks]) VALUES (2, 1, 90)  
INSERT INTO [dbo].[StudentMarks] ([StudentId], [SubjectId], [Marks]) VALUES (2, 2, 60)  
INSERT INTO [dbo].[StudentMarks] ([StudentId], [SubjectId], [Marks]) VALUES (2, 3, 50)  
INSERT INTO [dbo].[StudentMarks] ([StudentId], [SubjectId], [Marks]) VALUES (3, 1, 20)  
INSERT INTO [dbo].[StudentMarks] ([StudentId], [SubjectId], [Marks]) VALUES (3, 2, 30)  
INSERT INTO [dbo].[StudentMarks] ([StudentId], [SubjectId], [Marks]) VALUES (3, 3, 40) 




Select   
StudentId, SubjectId, MARKS,  
TotalSubjects= Count(*) Over (),  
Average = Avg(Marks) Over (),  
Maximum = Max(Marks) Over (),  
Minimum = Min(Marks) Over (),  
Total = Sum(Marks) Over ()  
From StudentMarks


--Now if we want to get running aggregations, that means aggregations based upon each and every record, then we need to use the order by clause in the over function

Select   
StudentId, SubjectId, MARKS,  
TotalSubjects= Count(*) Over (Partition By StudentId) ,  
Average = Avg(Marks) Over (Partition By StudentId Order By SubjectID),  
Maximum = Max(Marks) Over (Partition By StudentId Order By SubjectID),  
Minimum = Min(Marks) Over (Partition By StudentId Order By SubjectID),  
Total = Sum(Marks) Over (Partition By StudentId Order By SubjectID)  
From StudentMarks 

-- Tutorial
-- https://www.c-sharpcorner.com/UploadFile/78607b/over-clause-in-sql-server-windows-on-data-part-1/
