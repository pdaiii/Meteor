import React from 'react';
import {connect} from 'react-redux';

import {closeModal} from '../actions/modal_actions';

import SignupFormContainer from './session_form/signup_form_container';
import LoginFormContainer from './session_form/login_form_container';
import ResponseContainer from './responses/response_container';

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
      // component = <SignupFormContainer/>;
      // break;
      return (
        <div className="modal-background" onClick={props.closeModal}>
          <div className="modal-child" onClick={(e) => e.stopPropagation()}>
            <SignupFormContainer/>
          </div>
        </div>
      );
    case 'Sign in':
      // component = <LoginFormContainer/>;
      // break;
      return (
        <div className="modal-background" onClick={props.closeModal}>
          <div className="modal-child" onClick={(e) => e.stopPropagation()}>
            <LoginFormContainer />
          </div>
        </div>
      );
    case 'Create Response':
      // component = <ResponseContainer/>;
      // break;
      return (
        <div className="modal-create-response-background" onClick={props.closeModal}>
          <div className="modal-create-response-child" onClick={(e) => e.stopPropagation()}>
            <ResponseContainer />
          </div>
        </div>
      );
    default:
      return null;
  }

  // return (
  //   <div className="modal-background" onClick={props.closeModal}>
  //     <div className="modal-child" onClick={(e) => e.stopPropagation()}>
  //       {component}
  //     </div>
  //   </div>
  // );
}

export default connect(mapStateToProps, mapDispatchToProps)(Modal);