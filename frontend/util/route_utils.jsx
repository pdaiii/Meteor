import React from 'react';
import { connect } from 'react-redux';
import { Route, Redirect, withRouter } from 'react-router-dom';

// If the user is logged in, then the user will be redirected. Otherwise, they will have access to the Component.
// const Auth = ({ component: Component, path, loggedIn, exact }) => (
//   <Route 
//     path={path} 
//     // exact={exact} 
//     render={(props) => (
//       loggedIn ? (<Component {...props} />) : (<Redirect to="/" />)
//     )} 
//   />
// );

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.id)
});

// If the user is logged in, then the user will not have access to the Component.
// This is to prevent the user from accidentally trying to access pages they were not given permission for.
const Auth = ({path, loggedIn, component: Component}) => (
  <Route 
    path={path} 
    render={(props) => (
      // Redirect to the index page if the user is already authenticated
      loggedIn ? <Redirect to="/index" /> : <Component {...props} />
    )} 
  />
);

// If the user is logged in, then the user should be able to see the Component. Else they will be redirected.
// const Protected = ({ component: Component, loggedIn, ...rest }) => (
//   <Route 
//     {...rest} 
//     render={props => (
//       // Redirect to the index page if the user is already authenticated
//       !loggedIn ? (<Component {...props} />) : (<Redirect to="/index" />)
//     )}
//   />
// );

// If the user is logged in, then the user should be able to see the Component. Else they will be redirected to
// the home page.
const Protected = ({path, loggedIn, component: Component}) => (
  <Route 
    path={path}
    render={props => (
      loggedIn ? <Component {...props} /> : <Redirect to="/" />
    )}
  />
);

export const AuthRoute = withRouter(connect(mapStateToProps, null)(Auth));
export const ProtectedRoute = withRouter(connect(mapStateToProps, null)(Protected));