import { RECEIVE_ALL_STORY_CLAPS, RECEIVE_STORY_CLAP, DESTROY_STORY_CLAP } 
  from '../actions/story_clap_actions';
import merge from 'lodash/merge';

const StoryClapsReducer = (oldState={}, action) => {
  Object.freeze(oldState);
  let newState;
  switch(action.type) {
    case RECEIVE_ALL_STORY_CLAPS:
      return action.story_claps;
    case RECEIVE_STORY_CLAP:
      debugger
      newState = merge({}, oldState, {[action.story_clap.story_id]: action.story_clap});
      return newState;
    case DESTROY_STORY_CLAP:
      debugger
      newState = merge({}, oldState);
      delete newState[action.id];
      return newState;
    default:
      return oldState;
  }
}

export default StoryClapsReducer;