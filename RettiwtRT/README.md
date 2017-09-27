## **[![RAILS](https://user-images.githubusercontent.com/29721601/30682137-e2e0413e-9eda-11e7-9df1-6a21225f2c10.png "Rails")](http://rubyonrails.org/) VIVIXX CHALLENGES: _RettiwtRT_**

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

### RUN APP
1. Make sure you have rails [installed](http://railsapps.github.io/installing-rails.html).
2. Copy the 'RettiwtRT' folder to your computer.
3. In your terminal, set your directory to inside this folder.
4. Type `bundle install`. You may need to type `bundle update` as well.
5. Type `rails server` or `rails server`.
6. Open http://localhost:3000/ in your browser.

### THE APP

I suppose everyone is familiar with Twitter. This app is basically trying to emulate some of the basic features of Twitter:

- [WELCOME(?) PAGE](#welcome-page)
- [USER ACCOUNTS](#user-accounts)
- [MICROPOSTS](#microposts)
- [FOLLOWING USERS](#following-users)
- [ADMIN](#admin)

#### WELCOME(?) PAGE

I probably should send a warning image right now:

![Home](https://user-images.githubusercontent.com/29721601/30682467-54cc0eee-9edc-11e7-96b2-a1b743bcea00.png)

That's right, MIRRORED!

This was done on the premise that since everyone is pretty familiar with twitter functions, and there is no need for this one to be normal, this app should be navigated by instinct rather than vision. Because, seriously, your eyes will hurt.

#### USER ACCOUNTS

After getting used to the mirror effect, you can start creating an account so that you can navigate through the app:

![Sign Up](https://user-images.githubusercontent.com/29721601/30682364-06b232d8-9edc-11e7-887a-d30ff7da853b.png)

Or if, like me, you have an account already, you can simply log in right away...

![Log In](https://user-images.githubusercontent.com/29721601/30682365-06b30abe-9edc-11e7-9a9d-8959fb9b7861.png)

- #### Profile Page
    The profile page looks like this:

    ![Profile](https://user-images.githubusercontent.com/29721601/30682366-06c503d6-9edc-11e7-8f53-0a28774f1105.png)

    And you can edit your name, email, password, and avatar (though you'll need a Gravatar account to do that).

    ![Edit Profile](https://user-images.githubusercontent.com/29721601/30682368-06c6a3e4-9edc-11e7-948d-116d46ac787f.png)

- #### Home
    For logged in users, this is the Home page:

    ![User Home Page](https://user-images.githubusercontent.com/29721601/30682369-06c8154e-9edc-11e7-9ef2-58b5c9e524a6.png)

    Here you can see who you're following and your followers. You can view the microposts of those you followed, and create your own as well.

#### MICROPOSTS
For microposts, you can upload an image along with your text...

![Create Post](https://user-images.githubusercontent.com/29721601/30682367-06c67c2a-9edc-11e7-8e6c-b0a8913067bb.png)

Or delete a post of yours.

![Del Post](https://user-images.githubusercontent.com/29721601/30682373-0702015a-9edc-11e7-92d2-f06ea624745b.png)

#### FOLLOWING USERS
As mentioned earlier, your home page displays posts of other users you've followed. There's a list of all the users in the app.

![User List](https://user-images.githubusercontent.com/29721601/30682371-06fda1d2-9edc-11e7-87c6-dcdab53cd971.png)

When you click on one of the names, there'll be a button above that user's microposts that'll allow you to follow/unfollow that user.

![Follow](https://user-images.githubusercontent.com/29721601/30682372-06ff0d1a-9edc-11e7-8620-19e8346793e7.png)

In the Home page, if you click on the following/followers below your avatar, you should be able to see a list of them.

![Following](https://user-images.githubusercontent.com/29721601/30682374-0703d1c4-9edc-11e7-9abc-16ed34d7449f.png)

![Followers](https://user-images.githubusercontent.com/29721601/30682375-07349d72-9edc-11e7-9b22-de2eff6cb2a9.png)

#### ADMIN
In order to log in as an admin, use this account:

| EMAIL | PASSWORD |
| --- | --- |
| example@railstutorial.org | foobar |

You can now delete users in the app.

![Delete User](https://user-images.githubusercontent.com/29721601/30682376-073a661c-9edc-11e7-9446-71f76512b1d9.png)
