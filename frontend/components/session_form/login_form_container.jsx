import React from 'react';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { login, clearErrors } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => ({
    errors: state.errors.session,
    formType: 'Sign in'
});

const mapDispatchToProps = dispatch => ({
    processForm: (user) => dispatch(login(user)),
    clearErrors: () => dispatch(clearErrors()),
    // otherForm instead of navLink with the modal
    otherForm: (
        <button onClick={() => dispatch(openModal('Sign up'))}>
            Sign up
        </button>
    ),
    closeModal: () => dispatch(closeModal())
});

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);