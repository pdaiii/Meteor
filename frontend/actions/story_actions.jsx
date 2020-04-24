import * as APIStoryUtil from '../util/story_util';

export const RECEIVE_ALL_STORIES = 'RECEIVE_ALL_STORIES';
export const RECEIVE_STORY = 'RECEIVE_STORY';
export const DESTROY_STORY = 'DESTROY_STORY';

// STORY CREATE/EDIT ERRORS
export const RECEIVE_STORY_ERRORS = 'RECEIVE_STORY_ERRORS';
export const CLEAR_STORY_ERRORS = 'CLEAR_STORY_ERRORS';

// Action Creators
const receiveAllStories = (stories) => ({
  type: RECEIVE_ALL_STORIES,
  stories: stories
});

const receiveStory = (story) => ({
  type: RECEIVE_STORY,
  story: story
});

const removeStory = (id) => ({
  type: DESTROY_STORY,
  id: id
});

// Errors
const receiveErrors = (errors) => ({
  type: RECEIVE_STORY_ERRORS,
  errors: errors
});

export const clearErrors = () => ({
  type: CLEAR_STORY_ERRORS,
  errors: []
});

// Thunk Action Creators
export const fetchAllStories = () => {
  return dispatch => {
    return APIStoryUtil.fetchAllStories()
      .then(stories => dispatch(receiveAllStories(stories)));
  };
};

export const fetchStory = (id) => {
  return dispatch => {
    return APIStoryUtil.fetchStory(id)
      .then(story => dispatch(receiveStory(story)));
  };
};


// // Add Story Create Errors
// export const createStory = (story) => {
//   return dispatch => {
//     return APIStoryUtil.createStory(story)
//       .then(story => dispatch(receiveStory(story)))
//   };
// };

// Add Story Create Errors
export const createStory = (story) => {
  return dispatch => {
    return APIStoryUtil.createStory(story)
      .then(story => dispatch(receiveStory(story)),
      (err) => (dispatch(receiveErrors(err.responseJSON))));
  };
};

// // Add Story Edit Errors
// export const updateStory = (story, story_id) => {
//   return dispatch => {
//     return APIStoryUtil.updateStory(story, story_id)
//       .then(story => dispatch(receiveStory(story)))
//   };
// };

// Add Story Edit Errors
export const updateStory = (story, story_id) => {
  return dispatch => {
    return APIStoryUtil.updateStory(story, story_id)
      .then(story => dispatch(receiveStory(story)),
      (err) => (dispatch(receiveErrors(err.responseJSON))));
  };
};

export const updateStoryLikes = (story, story_id) => {
  return dispatch => {
    return APIStoryUtil.updateStoryLikes(story, story_id)
      .then(story => dispatch(receiveStory(story)));
  };
};

export const deleteStory = (id) => {
  return dispatch => {
    return APIStoryUtil.deleteStory(id)
      .then(() => dispatch(removeStory(id)));
  };
};