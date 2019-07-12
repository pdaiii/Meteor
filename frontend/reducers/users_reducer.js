import { RECEIVE_CURRENT_USER} from '../actions/session_actions';
import { RECEIVE_USER } from '../actions/user_actions';
import merge from 'lodash/merge';

const usersReducer = (oldState = {}, action) => {
  let newState;
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      return Object.assign({}, {[action.user.id]: action.user })
    case RECEIVE_USER:
      newState = merge({}, oldState, {[action.user.id]: action.user});
      return newState;
    default:
      return oldState;
  }
};

export default usersReducer;