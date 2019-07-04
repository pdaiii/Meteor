import React from 'react';
import { Route, Link } from 'react-router-dom';

import NavBarContainer from './navbar/navbar_container';
import SignupFormContainer from './session_form/signup_form_container';
import LoginFormContainer from './session_form/login_form_container';
import {AuthRoute} from '../util/route_util';

const App = () => (

    <div>
        <header className="navBar">
            <Link to='/'><h1 className="logo">Meteor</h1></Link>
            <NavBarContainer />
        </header>

        <AuthRoute exact path='/signup' component={SignupFormContainer} />
        <AuthRoute exact path='/login' component={LoginFormContainer}/>
    </div>
);

export default App;