import React from 'react';
import {connect} from 'react-redux';

import {closeModal} from '../actions/modal_actions';

import SignupFormContainer from './session_form/signup_form_container';
import LoginFormContainer from './session_form/login_form_container';

const mapStateToProps = (state) => ({
  modal: state.ui.modal
});

const mapDispatchToProps = dispatch => ({
  closeModal: () => dispatch(closeModal())
});

function Modal (props) {
  if(!props.modal) {
    return null;
  }
  let component;
  switch(props.modal) {
    case 'Sign up':
      component = <SignupFormContainer/>;
      break;
    case 'Sign in':
      component = <LoginFormContainer/>;
      break;
    default:
      return null;
  }

  return (
    <div className="modal-background" onClick={props.closeModal}>
      <div className="modal-child" onClick={(e) => e.stopPropagation()}>
        {component}
      </div>
    </div>
  );
}

export default connect(mapStateToProps, mapDispatchToProps)(Modal);