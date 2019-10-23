import * as APIStoryClapUtil from '../util/story_clap_util';
export const RECEIVE_ALL_STORY_CLAPS = 'RECEIVE_ALL_STORY_CLAPS';
export const RECEIVE_STORY_CLAP = 'RECEIVE_STORY_CLAP';
export const DESTROY_STORY_CLAP = 'DESTROY_STORY_CLAP';

export const receiveAllStoryClaps = (story_claps) => ({
  type: RECEIVE_ALL_STORY_CLAPS,
  story_claps: story_claps
});

export const receiveStoryClap = (story_clap) => ({
  type: RECEIVE_STORY_CLAP,
  story_clap: story_clap
});

export const removeStoryClap = (id) => ({
  type: DESTROY_STORY_CLAP,
  id: id
});

export const fetchAllStoryClaps = (story_id) => {
  return dispatch => {
    return APIStoryClapUtil.fetchStoryClaps(story_id)
      .then(story_claps => dispatch(receiveAllStoryClaps(story_claps)))
  }
};

export const createStoryClap = (clap, story_id) => {
  return dispatch => {
    return APIStoryClapUtil.createStoryClap(clap, story_id)
      .then(story_clap => dispatch(receiveStoryClap(story_clap)))
  }
};

export const destroyStoryClap = (story_id, id) => {
  debugger
  return dispatch => {
    APIStoryClapUtil.destroyStoryClap(story_id, id)
      .then(() => dispatch(removeStoryClap(story_id)))
  }
};