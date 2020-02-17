		Project Name:  Simple_cf_toolkit
------------------------------------------------------------------

#About the project:

this project takes 2 username of codeforces users.
It prints selected user's participated contest statistics and also
compares contest statistics between two users.

this project mainly contains 2 pages: homepage.html and compare.php

#Homepage:

the 'homepage.html' file refers to the link of the page compare.php
located in "simple_cf_toolkit/php/compare.php"
which actually compares and shows comparison between two codeforces user's contest statistics

#Compare:

this page takes two user's username(in codeforces it is called handle) as input
some codeforces usernames for example: onirban, flash_7, dragoon, nfssdq,
other codeforces usenames can be found here:http://codeforces.com/ratings

if any of the two username is invalid , it shows exception, otherwise it establish
database connection using DB_Connection.php file located in "simple_cf_toolkit/php/DB_Connection.php"

#About the input data:
I used the codeforces API to get the json data of my desired property

links: 
http://codeforces.com/api/help
http://codeforces.com/api/help/methods
http://codeforces.com/api/help/objects


to get the json format data of a particular user's contests, I used URL of the floowing format:
"http://codeforces.com/api/user.rating?handle=handleName"
example: http://codeforces.com/api/user.rating?handle=onirban

to get the json data using PHP code, I used PHP function file_get_contents()
and to get the json data in PHP array format I used json_decode

#Database:

after I got the response "OK" for two users using file_get_contents() and json_decode()
I established database connection. I used PHP Data Object (PDO) for mysql database 
connection and manipulate data in sql. 
there are two tables in the database: user1_contests and user2_contests
each of the table contains following entities:
(contestId,contestName,rank,oldRating, newRating)

the rows in the database are filled from the data wchich is stored
in an array after getting response using file_get_contents() and json_decode()

#other useful links: 
all the links that helped me to build this project is included in the file
"useful_links_for_cf_toolkit_copy.txt"

#Upcoming and future plans related to this project:

Since some method are unavailable to get the json data directly for some property, and also little knowledge about API's I could not
Implement some feature till now. I am working on some feature like comparing solved problems of each catagory,
strong and weak areas of two users . I am also interested to predict the rating of a particular user in the next contest 
based on the past submissions and contest data of that user if possible
							
				

 
