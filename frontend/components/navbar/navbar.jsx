import React from 'react';
import { Link } from 'react-router-dom';
import { monthDay } from '../../util/month_day_util';

class navBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      showMenu: false,
      search: true
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.openMenu = this.openMenu.bind(this);
    this.expandSearch = this.expandSearch.bind(this);
  }
    
  componentWillMount() {
    this.props.fetchAllStories();
    this.props.fetchUser(this.props.currentUser.id);
    this.props.fetchAllFollowers(this.props.currentUser.id);
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

  openMenu(event) {
    event.preventDefault();
    if(this.state.showMenu) {
      this.setState({
        showMenu: false
      })
    }
    else {
      this.setState({
        showMenu: true
      });
    }
  }
  
  expandSearch(event) {
    event.preventDefault();
    if(this.state.search) {
      document.getElementById('search-bar').setAttribute("style", "display: inline");
      this.setState({
        search: false
      })
    }
    else {
      document.getElementById('search-bar').setAttribute("style", "display: none");
      this.setState({
        search: true
      })
    } 
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
            <button id="search" onClick={this.expandSearch} className="search-submit-btn" type="submit"><i className="fas fa-search"></i></button>
            <input id="search-bar" className="search-bar" type="text" placeholder="Search Meteor" />
          </form>
        </div>
      )
    }
  }

  notifications() {
    let notifications = Object.values(this.props.currentUser.followers).map(follower => {
      return (
        <div className="notification-item">
          <Link to={`/users/${this.props.currentUser.id}`} className="notification-profile">
            <i className="fas fa-user-circle"></i>
          </Link>
          <div>
            <a className="notification-text">{follower.username} started following you</a>
            <p className="notification-date">{monthDay(follower.created_at)}</p>
          </div>
        </div>
      )
    });
    return notifications;
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
          <div className="dropdown">
            <button className="navbar-notifications" onClick={this.openMenu}><i className="fas fa-bell"></i></button>
            {this.state.showMenu ? 
              <div className="dropdown-menu" id="notification-dropdown">
                {this.notifications()}
              </div> : null
            }
          </div>
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