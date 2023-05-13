

CREATE TABLE vote_count (
    voter_id varchar2(20) NOT NULL,
    party varchar2(15) NOT NULL,
    voter_name varchar2(20),
    is_valid_vote  NOT NULL,
    PRIMARY KEY(voter_id)
);

INSERT
    ALL INTO vote_count (voter_id, party, voter_name,is_valid_vote)
VALUES
    ('R4TYIOO78', 'PEP_DEMO', 'Roben James',1) INTO vote_count (voter_id, party, voter_name,is_valid_vote)
VALUES
    ('TTYIOO78', 'REP', 'Samantha F',1) INTO vote_count (voter_id, party, voter_name,is_valid_vote)
VALUES
    ('YTYIOO78', 'PEP_DEMO', 'Robert ',0) INTO vote_count (voter_id, party, voter_name,is_valid_vote)
VALUES
    ('ATYIOO78', 'PEP_DEMO', 'Peter',1) INTO vote_count (voter_id, party, voter_name,is_valid_vote)
VALUES
    ('ETYROO78', 'PEP_DEMO', 'Stewiew',1) INTO vote_count (voter_id, party, voter_name,is_valid_vote)
VALUES
    ('TAQIOO78', 'PEP_DEMO', 'Lolitha',1) INTO vote_count (voter_id, party, voter_name,is_valid_vote)
VALUES
    ('ZTYIOO78', 'REP', 'Rama Rao',1) INTO vote_count (voter_id, party, voter_name,is_valid_vote)
VALUES
    ('UTYIOO78', 'REP', 'Chin Chan',1)
SELECT
    *
FROM
    dual;

/*Group By*/
SELECT
    party,
    COUNT(party) AS "Total-Votes"
FROM
    vote_count
GROUP BY
    party
    HAVING COUNT(party)>3 ;

/*
 The winner with total votes is 
 Party     |  Total-Votes
 PEP_DEMO  |  5
 */