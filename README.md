# Meteor
[Live Site](https://meteor-fsp.herokuapp.com/#/)

Meteor is a social media application inspired by Medium that enables authors to publicly share articles. Users can create articles and like and comment on other user posts. The application utilizes Ruby on Rails and PostgreSQL on the backend with a React and Redux frontend.


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
```
import React from 'react';
import { withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemoUser = this.handleDemoUser.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user)
      .then(this.props.closeModal)
      .then(() => this.props.history.push(`/index`));
  }

  handleDemoUser(event) {
    event.preventDefault();

    const demoUser = {
      username: "Guest User",
      password: "password"
    };

    this.setState({ username: demoUser.username });
    this.setState({ password: demoUser.password });

    this.props.processForm(demoUser)
      .then(this.props.closeModal)
      .then(() => this.props.history.push(`/index`));
  }
```
* Users can sign up or log in to gain access to logged in features. 
* If a user wishes not to create an account, they may choose to use the Demo Login feature.

### Stories
* Stories are generated on the homepage based on users they follow.
* A list of most popular stories on the site are generated on the user's home page.

### Responses
* A logged in user may leave responses on other users' stories.
* A logged in user may delete their own responses.

### Follows
* Logged in users can follow/unfollow other users.

## Future Implementations
* The feed page will generate stories based on who they follow.
* User profile.
* Notifications when there is activity from users you follow.

### Deployment Instructions
* npm install
* bundle install
* rails db:setup
* rails s
