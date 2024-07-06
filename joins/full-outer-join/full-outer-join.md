
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
select * from book full outer  join writer  on writer.writer_id=book.writer_id

|book_id|book_title       |writer_id|writer_id|full_name     |
|-------|-----------------|---------|---------|--------------|
|1      |Harry Poter      |250      |250      |JK Rolling    |
|2      |Modern Physics   |444      |444      |Albert Newton |
|3      |Engineering Maths|323      |323      |Subrahmanyam P|
|4      |The Bible        |         |         |              |
|5      |Learn German     |500      |500      |Xyortman Henry|
|       |                 |         |100      |R D S Shamaji |

#
select * from  writer full outer  join book  on writer.writer_id=book.writer_id
|writer_id|full_name     |book_id|book_title       |writer_id|
|---------|--------------|-------|-----------------|---------|
|250      |JK Rolling    |1      |Harry Poter      |250      |
|444      |Albert Newton |2      |Modern Physics   |444      |
|323      |Subrahmanyam P|3      |Engineering Maths|323      |
|         |              |4      |The Bible        |         |
|500      |Xyortman Henry|5      |Learn German     |500      |
|100      |R D S Shamaji |       |                 |         |

