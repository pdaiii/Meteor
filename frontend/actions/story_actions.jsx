import * as APIStoryUtil from '../util/story_util';

export const RECEIVE_ALL_STORIES = 'RECEIVE_ALL_STORIES';
export const RECEIVE_STORY = 'RECEIVE_STORY';
export const DESTROY_STORY = 'DESTROY_STORY';

// Action Creators
const receiveAllStories = (stories) => ({
  type: 'RECEIVE_ALL_STORIES',
  stories: stories
});

const receiveStory = (story) => ({
  type: 'RECEIVE_STORY',
  story: story
});

const removeStory = (id) => ({
  type: 'DESTROY_STORY',
  id: id
});

// Thunk Action Creators
export const fetchAllStories = () => {
  return dispatch => {
    return APIStoryUtil.fetchAllStories()
      .then(stories => dispatch(receiveAllStories(stories)))
  };
};

export const fetchStory = (id) => {
  return dispatch => {
    return APIStoryUtil.fetchStory(id)
      .then(story => dispatch(receiveStory(story)))
  };
};

export const createStory = (story) => {
  return dispatch => {
    return APIStoryUtil.createStory(story)
      .then(story => dispatch(receiveStory(story)))
  };
};

export const updateStory = (story, story_id) => {
  return dispatch => {
    return APIStoryUtil.updateStory(story, story_id)
      .then(story => dispatch(receiveStory(story)))
  };
};

export const deleteStory = (id) => {
  return dispatch => {
    return APIStoryUtil.deleteStory(id)
      .then(() => dispatch(removeStory(id)))
  };
};