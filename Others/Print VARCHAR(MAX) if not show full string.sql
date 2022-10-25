--1

PRINT CAST(@queryFinal AS NTEXT)

--2
print cast( substring(@queryFinal, 1, 16000) as ntext )
print cast( substring(@queryFinal, 16001, 32000) as ntext )
print cast( substring(@queryFinal, 32001, 48000) as ntext )
print cast( substring(@queryFinal, 48001, 64000) as ntext )
