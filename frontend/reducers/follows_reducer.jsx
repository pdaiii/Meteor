import { RECEIVE_ALL_FOLLOWS, RECEIVE_FOLLOW, DESTROY_FOLLOW }
  from '../actions/follow_actions';
import merge from 'lodash/merge';

const FollowsReducer = (oldState={}, action) => {
  Object.freeze(oldState);
  let newState;
  switch(action.type) {
    case RECEIVE_ALL_FOLLOWS:
      return action.follows;
    case RECEIVE_FOLLOW:
      newState = merge({}, oldState, {[action.follow.id]: action.follow});
      return newState;
    case DESTROY_FOLLOW:
      newState = merge({}, oldState);
      delete newState[action.id]
      return newState;
    default:
      return oldState;
  }
}

export default FollowsReducer;