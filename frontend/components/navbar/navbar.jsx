import React from 'react';
import { Link } from 'react-router-dom';

class navBar extends React.Component {
  constructor(props){
      super(props);
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