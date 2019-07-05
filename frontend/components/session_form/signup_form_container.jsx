import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { Link } from 'react-router-dom';
import { signup, clearErrors } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => ({
    errors: state.errors.session,
    formType: 'Sign up',
    // navLink: <Link to='/login'>Sign in</Link>
});

const mapDispatchToProps = dispatch => ({
    processForm: (user) => dispatch(signup(user)),
    clearErrors: () => dispatch(clearErrors()),
    // otherForm instead of navLink with the modal
    otherForm: (
        <button onClick={() => dispatch(openModal('Sign in'))}>
            Sign in
        </button>
    ),
    closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);