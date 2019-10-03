import React from 'react';
import { connect } from 'react-redux';
import { closeModal } from '../../actions/modal_actions';
import SignupFormContainer from '../session_form/signup_form_container';
import LoginFormContainer from '../session_form/login_form_container';

const mapStateToProps = (state) => ({
  modal: state.ui.modal
});

const mapDispatchToProps = dispatch => ({
  closeModal: () => dispatch(closeModal())
});

function Modal (props) {
  // Don't need this if the switch statement defaults to null. Used for closing modal.
  // if(!props.modal) {
  //   return null;
  // }
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

  // How does the modal close?
  // Sends an action creator of type 'CLOSE_MODAL', which the reducer reads and sends back the state
  // of modal as null.
  return (
    <div className="modal-background" onClick={props.closeModal}>
      <div className="modal-child" onClick={(e) => e.stopPropagation()}>
        {component}
      </div>
    </div>
  );
}

export default connect(mapStateToProps, mapDispatchToProps)(Modal);