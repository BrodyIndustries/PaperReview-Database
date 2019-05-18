
In order to run this method you will need to execute the Insert and Create SQL statements previously posted. 
Please run this program in Eclipse or any other application that supports Java programs. 

In order to connect to the database you need to set the username and password in the Conneciton object.  In the code I have specified these variables so incase your local database has these variables specified differently then please change the code to specify the correct connection. 

There are 5 different methods created to run each of the queries. They are  paperDetail, getReviews, getCount, addPaper,and deleteAuthor. 

Paper Detail Returns The Submitted Paper Details. 
GetReviews returns all reviews from the database  that HAD a Recommendation. 
GetCount returns the number of all papers submitted. 
AddPaper Creates A Paper Submission.
deleteAuthor attempts to Delete an Author from the database. IF they are unsuccessful an error message will print out. 
