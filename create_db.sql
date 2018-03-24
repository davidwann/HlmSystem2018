
-- create database tables


-- CREATE SEQUENCE user_accounts_id_seq;

-- SELECT NEXTVAL(user_accounts_id_seq);



-- NEXTVAL('user_accounts_id_seq');

-- nextval('user_accounts_id_seq');

-- select "Larry";

-- print "Joe";

-- my_num integer := NEXTVAL(user_accounts_id_seq);

-- DECLARE mynum INTEGER;

-- select print('foo bar');

/*

select 'hi';
select 8 as "age";

do $$DECLARE mynum INTEGER;
begin
  mynum := 7;
  select mynum as "age";
  -- print(mynum);
end$$;

*/


-- table:  user_accounts


DROP TABLE IF EXISTS user_accounts;

CREATE SEQUENCE user_accounts_id_seq;

CREATE TABLE user_accounts (
  id                   INTEGER        NOT NULL  DEFAULT NEXTVAL('user_accounts_id_seq')  PRIMARY KEY,
  account_type         CHAR(2)        NOT NULL,
  username             VARCHAR(50)    NOT NULL  UNIQUE  DEFAULT('ACCT NBR ' || LASTVAL()),
  sys_uname            VARCHAR(50)    NOT NULL  UNIQUE  DEFAULT('ACCT NBR ' || LASTVAL()),
  email                VARCHAR(100)   NOT NULL  UNIQUE,
  password             VARCHAR(100)   NOT NULL,
  pw_salt              VARCHAR(100)   NOT NULL,
  zip_code             CHAR(5)        NOT NULL,
  lat_coordinate       NUMERIC(9, 6)  NOT NULL,
  long_coordinate      NUMERIC(9, 6)  NOT NULL,
  greeting             VARCHAR(300)   NOT NULL,
  interests            VARCHAR(300)   NOT NULL,
  is_interested_in_SM  BOOLEAN        NOT NULL  DEFAULT TRUE,
  is_interested_in_SF  BOOLEAN        NOT NULL  DEFAULT TRUE,
  is_interested_in_CP  BOOLEAN        NOT NULL  DEFAULT TRUE,
  is_interested_in_CM  BOOLEAN        NOT NULL  DEFAULT TRUE,
  is_interested_in_CF  BOOLEAN        NOT NULL  DEFAULT TRUE,
  created              TIMESTAMP      NOT NULL  DEFAULT CURRENT_TIMESTAMP,
  modified             TIMESTAMP      NOT NULL  DEFAULT CURRENT_TIMESTAMP
);

ALTER SEQUENCE user_accounts_id_seq OWNED BY user_accounts.id;



-- table:  account_members







































