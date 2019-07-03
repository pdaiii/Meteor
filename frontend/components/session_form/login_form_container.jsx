import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { Link } from 'react-router-dom';

const mapStateToProps = state => ({
    errors: state.errors.session,
    // errors: Object.values(state.errors),
    formType: 'Login',
    navLink: <Link to='/signup'>Sign up instead</Link>
});

const mapDispatchToProps = dispatch => ({
    processForm: (user) => dispatch(login(user))
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);