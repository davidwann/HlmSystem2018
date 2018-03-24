
-- insert_user_accounts.sql

-- SELECT * FROM user_accounts;

-- TRUNCATE TABLE user_accounts;

-- TRUNCATE TABLE user_accounts RESTART IDENTITY;


INSERT INTO user_accounts (account_type,
                           email,
                           password,
                           pw_salt,
                           zip_code,
                           lat_coordinate,
                           long_coordinate,
                           greeting,
                           interests,
                           is_interested_in_SM,
                           is_interested_in_SF,
                           is_interested_in_CP,
                           is_interested_in_CM,
                           is_interested_in_CF)
   VALUES ('SM',
           'joe1@msn.com',
           'LetMeIn',
           'salty dog',
           '38117',
           123.445566,
           321.665544,
           'Hello World!',
           'Bacon and Sausage', 
		   FALSE, TRUE, FALSE, FALSE, FALSE);


INSERT INTO user_accounts (account_type,
                           email,
                           password,
                           pw_salt,
                           zip_code,
                           lat_coordinate,
                           long_coordinate,
                           greeting,
                           interests,
                           is_interested_in_SM,
                           is_interested_in_SF,
                           is_interested_in_CP,
                           is_interested_in_CM,
                           is_interested_in_CF)
   VALUES ('SM',
           'joe2@msn.com',
           'LetMeIn',
           'salty dog',
           '38117',
           123.445566,
           321.665544,
           'Hello World!',
           'Bacon and Sausage', 
		   FALSE, TRUE, FALSE, FALSE, FALSE);


INSERT INTO user_accounts (account_type,
                           email,
                           password,
                           pw_salt,
                           zip_code,
                           lat_coordinate,
                           long_coordinate,
                           greeting,
                           interests,
                           is_interested_in_SM,
                           is_interested_in_SF,
                           is_interested_in_CP,
                           is_interested_in_CM,
                           is_interested_in_CF)
   VALUES ('SM',
           'joe3@msn.com',
           'LetMeIn',
           'salty dog',
           '38117',
           123.445566,
           321.665544,
           'Hello World!',
           'Bacon and Sausage', 
		   FALSE, TRUE, FALSE, FALSE, FALSE);






SELECT * FROM user_accounts;






/* ===================================================================== */


/* ===================================================================== */


/* ===================================================================== */



-- INSERT INTO user_accounts (account_type,
--                            username,
--                            sys_uname,
--                            email,
--                            password,
--                            pw_salt,
--                            zip_code,
--                            lat_coordinate,
--                            long_coordinate,
--                            greeting,
--                            interests)
--    VALUES ('SM',
--            'Single Male 1',
--            'Single Male 1',
--            'joe1@msn.com',
--            'LetMeIn',
--            'salty dog',
--            '38117',
--            123.445566,
--            321.665544,
--            'Hello World!',
--            'Bacon and Sausage');
		

-- INSERT INTO user_accounts (account_type,
--                            username,
--                            sys_uname,
--                            email,
--                            password,
--                            pw_salt,
--                            zip_code,
--                            lat_coordinate,
--                            long_coordinate,
--                            greeting,
--                            interests)
--    VALUES ('SM',
--            'Single Male 2',
--            'Single Male 2',
--            'joe2@msn.com',
--            'LetMeIn',
--            'salty dog',
--            '38117',
--            123.445566,
--            321.665544,
--            'Hello World!',
--            'Bacon and Sausage');


-- INSERT INTO user_accounts (account_type,
--                            username,
--                            sys_uname,
--                            email,
--                            password,
--                            pw_salt,
--                            zip_code,
--                            lat_coordinate,
--                            long_coordinate,
--                            greeting,
--                            interests)
--    VALUES ('SM',
--            'Single Male 3',
--            'Single Male 3',
--            'joe3@msn.com',
--            'LetMeIn',
--            'salty dog',
--            '38117',
--            123.445566,
--            321.665544,
--            'Hello World!',
--            'Bacon and Sausage');




