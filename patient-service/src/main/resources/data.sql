-- Ensure the 'patient' table exists
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255)        NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255)        NOT NULL,
    date_of_birth   DATE                NOT NULL,
    registered_date DATE                NOT NULL
);

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174011',
       'Arjun Malhotra',
       'arjun.malhotra@gmail.com',
       'Punjabi Bagh, New Delhi',
       '1988-02-14',
       '2023-11-11'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174011');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174012',
       'Sneha Kulkarni',
       'sneha.kulkarni@gmail.com',
       'Shivajinagar, Pune, Maharashtra',
       '1993-10-03',
       '2024-02-18'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174012');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174013',
       'Vikram Saxena',
       'vikram.saxena@gmail.com',
       'Vaishali Nagar, Jaipur, Rajasthan',
       '1986-06-21',
       '2022-12-09'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174013');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174014',
       'Riya Banerjee',
       'riya.banerjee@gmail.com',
       'Salt Lake, Kolkata, West Bengal',
       '1997-04-19',
       '2024-05-01'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174014');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174015',
       'Nitin Bansal',
       'nitin.bansal@gmail.com',
       'Civil Lines, Rohtak, Haryana',
       '1984-09-07',
       '2023-03-15'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174015');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174016',
       'Shalini Mishra',
       'shalini.mishra@gmail.com',
       'Gomti Nagar, Lucknow, Uttar Pradesh',
       '1992-12-25',
       '2024-01-05'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174016');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174017',
       'Kunal Arora',
       'kunal.arora@gmail.com',
       'Rajouri Garden, New Delhi',
       '1989-01-29',
       '2023-07-17'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174017');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174018',
       'Meera Nair',
       'meera.nair@gmail.com',
       'Kakkanad, Kochi, Kerala',
       '1994-05-11',
       '2024-03-27'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174018');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174019',
       'Deepak Yadav',
       'deepak.yadav@gmail.com',
       'Sector 62, Noida, Uttar Pradesh',
       '1987-08-16',
       '2023-10-08'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174019');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174020',
       'Ayesha Khan',
       'ayesha.khan@gmail.com',
       'Park Street, Kolkata, West Bengal',
       '1991-11-04',
       '2022-09-30'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174020');


INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174021',
       'Harsh Vardhan',
       'harsh.vardhan@gmail.com',
       'Vasant Kunj, New Delhi',
       '1986-03-12',
       '2023-04-18'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174021');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174022',
       'Pankaj Tripathi',
       'pankaj.tripathi@gmail.com',
       'Kankarbagh, Patna, Bihar',
       '1981-07-21',
       '2022-11-09'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174022');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174023',
       'Swati Ghosh',
       'swati.ghosh@gmail.com',
       'Howrah Maidan, Howrah, West Bengal',
       '1993-05-06',
       '2024-01-30'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174023');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174024',
       'Mohit Chauhan',
       'mohit.chauhan@gmail.com',
       'Palampur, Kangra, Himachal Pradesh',
       '1988-09-15',
       '2023-08-22'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174024');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174025',
       'Ritu Saxena',
       'ritu.saxena@gmail.com',
       'Model Town, Ludhiana, Punjab',
       '1991-01-19',
       '2024-02-11'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174025');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174026',
       'Ashok Kumar',
       'ashok.kumar@gmail.com',
       'Ashok Nagar, Ranchi, Jharkhand',
       '1979-11-03',
       '2022-06-27'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174026');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174027',
       'Divya Menon',
       'divya.menon@gmail.com',
       'Vyttila, Kochi, Kerala',
       '1995-04-24',
       '2023-12-14'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174027');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174028',
       'Rakesh Saini',
       'rakesh.saini@gmail.com',
       'Sikar Road, Jaipur, Rajasthan',
       '1984-08-08',
       '2023-05-09'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174028');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174029',
       'Nandita Roy',
       'nandita.roy@gmail.com',
       'Ballygunge, Kolkata, West Bengal',
       '1990-10-27',
       '2024-04-06'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174029');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174030',
       'Imran Ali',
       'imran.ali@gmail.com',
       'Charminar, Hyderabad, Telangana',
       '1987-02-17',
       '2022-09-12'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174030');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174031',
       'Kriti Arora',
       'kriti.arora@gmail.com',
       'DLF Phase 3, Gurugram, Haryana',
       '1996-06-01',
       '2024-03-03'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174031');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174032',
       'Sanjay Pawar',
       'sanjay.pawar@gmail.com',
       'Satara Road, Kolhapur, Maharashtra',
       '1983-12-10',
       '2023-07-29'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174032');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174033',
       'Farhan Qureshi',
       'farhan.qureshi@gmail.com',
       'Nehru Nagar, Bhopal, Madhya Pradesh',
       '1989-09-14',
       '2023-01-18'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174033');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174034',
       'Sheetal Deshpande',
       'sheetal.deshpande@gmail.com',
       'Karve Nagar, Nagpur, Maharashtra',
       '1992-05-28',
       '2024-02-26'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174034');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174035',
       'Vishal Thakur',
       'vishal.thakur@gmail.com',
       'Lower Bazar, Shimla, Himachal Pradesh',
       '1985-01-07',
       '2022-08-15'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174035');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174036',
       'Ankita Pandey',
       'ankita.pandey@gmail.com',
       'Civil Lines, Prayagraj, Uttar Pradesh',
       '1994-11-22',
       '2023-10-04'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174036');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174037',
       'Rohin Chatterjee',
       'rohin.chatterjee@gmail.com',
       'Behala, Kolkata, West Bengal',
       '1988-07-19',
       '2024-01-16'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174037');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174038',
       'Kiran Patil',
       'kiran.patil@gmail.com',
       'MIDC Area, Nashik, Maharashtra',
       '1982-02-09',
       '2023-06-12'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174038');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174039',
       'Nisha Solanki',
       'nisha.solanki@gmail.com',
       'Kalol Road, Gandhinagar, Gujarat',
       '1991-03-31',
       '2024-04-28'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174039');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174040',
       'Aditya Kulshreshtha',
       'aditya.kul@gmail.com',
       'Thatipur, Gwalior, Madhya Pradesh',
       '1986-10-05',
       '2023-09-21'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174040');
