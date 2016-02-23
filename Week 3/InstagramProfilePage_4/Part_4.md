
## Here's two Instagram API endpoints that we will use in the app:

* https://api.instagram.com/v1/users/self/?access_token=ACCESS_TOKEN - Get information about the owner of the access_token.
* https://api.instagram.com/v1/users/self/media/recent/?access_token=ACCESS_TOKEN - Get the most recent media published by the owner of the access_token.

## How to get an Instagram ACCESS_TOKEN? 

[Warning: Make sure there are no trailing characters in your strings. For example, If you copy this to Mac's default Notes application, you may experience problems like trailing characters]

Step 1- Click Register your Application on https://www.instagram.com/developer/ 

Step 2- Click Register a new client button to register a new client [Note: Although this example app is called InstagramProfilePageClone, please create a client app on Instagram according to the new Instagram guidelines i.e without Insta/gram in the name]

Step 3- Enter the required details[Note: Always use https:// and not http:// in your website and redirect URI's] and you should get the following details for your new client:

Example:
CLIENT ID	155048626b774a348343feff8972ce27

CLIENT SECRET	6709dd945764415f918dc853498180b4

WEBSITE URL	https://www.google.com

REDIRECT URI	https://www.google.com

Step 4- Reference documentation(Server Side Flow): https://www.instagram.com/developer/authentication/

Enter the CLIENT ID and REDIRECT URI from above to the following statement: 
 https://api.instagram.com/oauth/authorize/?client_id=CLIENT-ID&redirect_uri=REDIRECT-URI&response_type=code

Example: https://api.instagram.com/oauth/authorize/?client_id=155048626b774a348343feff8972ce27&redirect_uri=https://www.google.com&response_type=code

Step 5- Enter the above URL in a browser and hit enter. Click Authorize, to authorize your new app.

Step 6- You will be redirected to the page in your REDIRECT URI but note the URL in the browser. The URL will be of the format:
https://www.google.com/?code=""

Example:
https://www.google.com/?code=a791e087807444eb8d0a45501cce16d1

Step 7- Use this code to request your access token, using the following curl command:

curl -F 'client_id=CLIENT_ID' \

  -F 'client_secret=CLIENT_SECRET' \
  
  -F 'grant_type=authorization_code' \
  
  -F 'redirect_uri=AUTHORIZATION_REDIRECT_URI' \
  
  -F 'code=CODE' \
  
  https://api.instagram.com/oauth/access_token

Example:

curl -F 'client_id=155048626b774a348343feff8972ce27' \

  -F 'client_secret=6709dd945764415f918dc853498180b4' \
  
  -F 'grant_type=authorization_code' \
  
  -F 'redirect_uri=AUTHORIZATION_REDIRECT_URI' \
  
  -F 'code=a791e087807444eb8d0a45501cce16d1' \
  
  https://api.instagram.com/oauth/access_token


Step 8- Enter the above curl command in a terminal window. The result should be as follows:
  {"access_token":"30523224.7dff092.6e25bfd2801243acbbbe5330b84ad604","user":{"username":"yezhisaim","bio":"Hello there!","website":"","profile_picture":"https:\/\/scontent.cdninstagram.com\/t51.2885-19\/925955_1524193197810410_352938347_a.jpg","full_name":"Yezhisai Murugesan","id":"30523224"}}

Step 9 - Congratulations! You've received your Access_token, that you can use to make requests through your app.
  "access_token":"30523224.7dff092.6e25bfd2801243acbbbe5330b84ad604"
 
