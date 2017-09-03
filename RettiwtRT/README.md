## **[![RAILS](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/RoRLogo1.png "Rails")](http://rubyonrails.org/) VIVIXX CHALLENGES: _RettiwtRT_**

### THE CHALLENGE

> Your task is to create your own twitter clone using the board we have created together.
Use "scaffold"*
Use Devise*  
\
\* I'm going to come clean here. I didn't use Devise and "scaffold" to make the app. I used the [tutorial](https://www.railstutorial.org/book/static_pages) by Michael Hartl.  
\
\*In my defense, I wanted to study how Rails worked and I felt that if I used Devise and scaffolding, I'd have difficulty configuring the app code-wise.  
\
\* I'm not saying it's better that way. I believe 'Devise' and 'scaffold' greatly make the job easier (why else would they exist?). I personally just needed to understand a bit more of Rails so that I can configure Devise and scaffolds when I used them.  
\
\*That's enough of defending myself. Now onto the app...

### THE APP

I suppose everyone is familiar with Twitter. This app is basically trying to emulate some of the basic features of Twitter:

- [WELCOME(?) PAGE](#welcome-page)
- [USER ACCOUNTS](#user-accounts)
- [MICROPOSTS](#microposts)
- [FOLLOWING USERS](#following-users)
- [ADMIN](#admin)

#### WELCOME(?) PAGE

I probably should send a warning image right now:

![Home](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/01Home.png)

That's right, MIRRORED!

This was done on the premise that since everyone is pretty familiar with twitter functions, and there is no need for this one to be normal, this app should be navigated by instinct rather than vision. Because, seriously, your eyes will hurt.

#### USER ACCOUNTS

After getting used to the mirror effect, you can start creating an account so that you can navigate through the app:

![Sign Up](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/02SignUp.png)

Or if, like me, you have an account already, you can simply log in right away...

![Log In](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/03Login.png)

- #### Profile Page
    The profile page looks like this:

    ![Profile](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/04Profile.png)

    And you can edit your name, email, password, and avatar (though you'll need a Gravatar account to do that).

    ![Edit Profile](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/05EditProfile.png)

- #### Home
    For logged in users, this is the Home page:

    ![User Home Page](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/06UserHomePage.png)

    Here you can see who you're following and your followers. You can view the microposts of those you followed, and create your own as well.

#### MICROPOSTS
For microposts, you can upload an image along with your text...

![Create Post](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/07CreatePost.png)

Or delete a post of yours.

![Del Post](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/08DeletePost.png)

#### FOLLOWING USERS
As mentioned earlier, your home page displays posts of other users you've followed. There's a list of all the users in the app.

![User List](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/09UserList.png)

When you click on one of the names, there'll be a button above that user's microposts that'll allow you to follow/unfollow that user.

![Follow](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/10Follow.png)

In the Home page, if you click on the following/followers below your avatar, you should be able to see a list of them.

![Following](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/11Following.png)

![Followers](http://i1202.photobucket.com/albums/bb362/tremor221/Vivixx/VCRoR/VCRoRRRT/12Followers.png)

#### ADMIN
In order to log in as an admin, use this account:
| EMAIL | PASSWORD |
| --- | --- |
| example@railstutorial.org | foobar |

You can now delete users in the app.

![Delete User]()
