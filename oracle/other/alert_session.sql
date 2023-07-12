
CREATE TABLE t1 ( 
	id NUMBER, 
	col varchar2(15), 
	CONSTRAINT t1_pk PRIMARY KEY (id) 
)

SELECT * FROM t1

INSERT INTO t1 VALUES (1, 'jose')
INSERT INTO t1 VALUES (2, 'Jose')
INSERT INTO t1 VALUES (3, 'JOSE')
INSERT INTO t1 VALUES (4, 'José')
INSERT INTO t1 VALUES (5, 'JOSÉ')

select col from t1 where col LIKE '%jose%'

CREATE INDEX idx_t1_col_ci ON t1(NLSSORT(col, 'NLS_SORT = BINARY_AI'))

alter session set NLS_COMP='LINGUISTIC' ;
alter session set NLS_SORT='BINARY_AI' ;
/*After completing the query result set NLS_COMP and NLS_SORT to original*/

alter session set NLS_COMP='BINARY' ;
alter session set NLS_SORT='BINARY' ;