

drop table writer;
drop table book;


CREATE TABLE writer (
    writer_id int NOT NULL,
    full_name varchar(20) NOT NULL,
    PRIMARY KEY(writer_id)
);

CREATE TABLE book (
    book_id  int NOT NULL,
    book_title varchar(50) NOT NULL,
	 writer_id int ,
    PRIMARY KEY(book_id)
);



/*Note that both employee and the salary table contains 
the emp_id */

INSERT
     INTO writer (writer_id, full_name )
   values (100, 'R D S Shamaji'), 
    (250, 'JK Rolling'), 
    (323, 'Subrahmanyam P') ,
    (444, 'Albert Newton'),
	(500, 'Xyortman Henry')
    

INSERT
   INTO book (book_id, book_title, writer_id)
    values (1, 'Harry Poter', 250) ,
    (2, 'Modern Physics', 444) ,
    (3, 'Engineering Maths', 323)  , 
    (4, 'The Bible', null) ,
    (5, 'Learn German', 500) 

select * from book full outer  join writer  on writer.writer_id=book.writer_id


select * from book;
select * from writer;


 