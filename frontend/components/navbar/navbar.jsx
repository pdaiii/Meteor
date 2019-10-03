import React from 'react';
import { Link } from 'react-router-dom';
import Notifications from './notifications';

class navBar extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
  }
    
  componentDidMount() {
    this.props.fetchAllStories();
  }

  clearForm() {
    document.getElementById('search-bar').value = "";
  }

  handleSubmit(event) {
    event.preventDefault();
    let searchEntry = document.getElementById("search-bar").value;
    document.getElementById('search-bar').value = '';
    this.props.history.push({
      pathname: '/search',
      search: `?q=${searchEntry}`
    });
  }

  searchBar() {
    // Render the search bar only when there is a currentUser logged in.
    if(!this.props.currentUser){
      return null;
    }
    else{
      return (
        <div className="search-container">
          <form onSubmit={this.handleSubmit}>
            <input id="search-bar" className="search-bar" type="text" placeholder="Search Meteor" />
            <button className="search-submit-btn" type="submit"><i className="fas fa-search"></i></button>
          </form>
        </div>
      )
    }
  }

  notifications() {
    // Bell when no notifications
    // Make drop down notifications when at least 1.
    let notifications = document.getElementsByClassName('notification-cnt');
    return (
      <form action="">
        <button className="navbar-notifications"><i className="fas fa-bell"></i></button>
        {/* Need to track notifications per user */}
        <p className="notification-cnt"></p>
      </form>
    )
  }

  render() {
    const sessionLinks = () => (
      <nav className="login-signup">
        <button className="navbar-signin" onClick={() => this.props.openModal('Sign in')}>Sign in</button>
        &nbsp;
        <button className="navbar-signup" onClick={() => this.props.openModal('Sign up')}>Get Started</button>
      </nav>
    );

    const personalGreeting = () => (
      <hgroup className="logged-in-navbar">
        {this.searchBar()}
        {this.notifications()}
        &nbsp;&nbsp;&nbsp;&nbsp;
        <h2 className="navbar-name">{this.props.currentUser.username}</h2>
        <Link to={`/users/${this.props.currentUser.id}`} className="navbar-profile">
          <i className="fas fa-user-circle"></i>
        </Link>
        <Link to="/"><button className="logout-button" onClick={() => this.props.logout()}>
          Log Out</button>
        </Link>
      </hgroup>
    );
    return this.props.currentUser ? personalGreeting() : sessionLinks();
  }
};

export default navBar;