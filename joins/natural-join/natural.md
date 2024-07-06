
#
|book_id|book_title       |writer_id|
|-------|-----------------|---------|
|1      |Harry Poter      |250      |
|2      |Modern Physics   |444      |
|3      |Engineering Maths|323      |
|4      |The Bible        |         |
|5      |Learn German     |500      |

#
|writer_id|full_name     |
|---------|--------------|
|100      |R D S Shamaji |
|250      |JK Rolling    |
|323      |Subrahmanyam P|
|444      |Albert Newton |
|500      |Xyortman Henry|

#
select * from  writer     natural join  book 

|writer_id|full_name     |book_id|book_title       |
|---------|--------------|-------|-----------------|
|250      |JK Rolling    |1      |Harry Poter      |
|444      |Albert Newton |2      |Modern Physics   |
|323      |Subrahmanyam P|3      |Engineering Maths|
|500      |Xyortman Henry|5      |Learn German     |
