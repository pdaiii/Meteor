# Meteor
[Live Site](https://meteor-fsp.herokuapp.com/#/)

Welcome to the Meteor wiki! Meteor is a social media application inspired by Medium that enables authors to publicly share articles. Users can create articles with a title, body, and image. Users can also like and comment on other users' posts.

## List of Technologies Used
* React
* Redux
* Ruby on Rails
* PostgreSQL
* JavaScript
* jQuery
* HTML5
* CSS3
* AWS S3
* Heroku

## Screenshots
![User Sign Up](https://user-images.githubusercontent.com/7242067/61167686-2966ef80-a4f7-11e9-983f-61f191bd00f8.png)

## Features and Functionality
### Log In/Sign Up
![image](https://user-images.githubusercontent.com/7242067/64880292-b1a76500-d60c-11e9-9130-ad4a4c1a8355.png)
* Users can sign up or log in to gain access to logged in features. 
* If a user wishes not to create an account, they may choose to use the Demo Login feature.

### Stories
* Stories are generated on the homepage based on users they follow.
* A list of most popular stories on the site are generated on the user's home page.

### Responses
* A logged in user may leave responses on other users' stories.
* A logged in user may delete their own responses.

## Future Implementations
* Users can follow other users.
* The feed page will generate stories based on who they follow.
* User profile.
* Notifications when there is activity from users you follow.

## Patches
* Patch9.3.2019
  * Search functionality no longer working.
  * Home page background image alignment no longer working.
  * Update Heroku to working version.

### Deployment Instructions
* npm install
* bundle install
* rails db:setup
* rails s
