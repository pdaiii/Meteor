import React from 'react';
import { Link } from 'react-router-dom';

class navBar extends React.Component {
    constructor(props){
        super(props);
    }
    
    render() {
        const sessionLinks = () => (
            <nav className="login-signup">
                <Link to="/login">Sign In</Link>
                &nbsp;
                <button><Link to="/signup">Get Started</Link></button>
            </nav>
        );

        const personalGreeting = () => (
            <hgroup className="header-group">
                <h2 className="header-name">Hi, {this.props.currentUser.username}!</h2>
                <button className="header-button" onClick={() => this.props.logout()}>Log Out</button>
            </hgroup>
        );
        return this.props.currentUser ? personalGreeting() : sessionLinks();
    }
};

export default navBar;