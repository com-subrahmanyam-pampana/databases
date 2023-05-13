
CREATE TABLE vote_count (
    voter_id varchar2(20) NOT NULL,
    party varchar2(15) NOT NULL,
    voter_name varchar2(20),
    PRIMARY KEY(voter_id)
);

INSERT
    ALL INTO vote_count (voter_id, party, voter_name)
VALUES
    ('R4TYIOO78', 'PEP_DEMO', 'Roben James') INTO vote_count (voter_id, party, voter_name)
VALUES
    ('TTYIOO78', 'REP', 'Samantha F') INTO vote_count (voter_id, party, voter_name)
VALUES
    ('YTYIOO78', 'PEP_DEMO', 'Robert ') INTO vote_count (voter_id, party, voter_name)
VALUES
    ('ATYIOO78', 'PEP_DEMO', 'Peter') INTO vote_count (voter_id, party, voter_name)
VALUES
    ('ETYROO78', 'PEP_DEMO', 'Stewiew') INTO vote_count (voter_id, party, voter_name)
VALUES
    ('TAQIOO78', 'PEP_DEMO', 'Lolitha') INTO vote_count (voter_id, party, voter_name)
VALUES
    ('ZTYIOO78', 'REP', 'Rama Rao') INTO vote_count (voter_id, party, voter_name)
VALUES
    ('UTYIOO78', 'REP', 'Chin Chan')
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
    party;

/*
 This result is the total votes of every individual parties
 party     |  Total-Votes
 PEP_DEMO  |  5
 REP       |  3
 */