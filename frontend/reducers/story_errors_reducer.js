import {RECEIVE_STORY_ERRORS, RECEIVE_STORY, CLEAR_STORY_ERRORS} from '../actions/story_actions';

const storyErrorsReducer = (oldState = [], action) => {
  Object.freeze(oldState);
  switch(action.type) {
    case RECEIVE_STORY_ERRORS:
      return action.errors;
    case RECEIVE_STORY:
        return [];
    case CLEAR_STORY_ERRORS:
      return action.errors;
    default:
      return oldState;
  }
};

export default storyErrorsReducer;