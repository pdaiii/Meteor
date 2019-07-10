import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// Testing purposes
// import {signup, login, logout} from './actions/session_actions';
import { fetchUser } from './util/user_util';
import { createStory} from './util/story_util';
import { fetchAllStories, deleteStory } from './actions/story_actions';
import * as AJAX from './util/session_api_util';
import { createResponse } from './util/response_util';

document.addEventListener('DOMContentLoaded', () => {
  let store;
  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      },
      session: { id: window.currentUser.id }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  window.getState = store.getState;
  window.dispatch = store.dispatch;

  // User Auth Testing Tools
  // window.signup = signup;
  // window.login = login;
  // window.logout = logout;
  window.signup = AJAX.signup;
  window.fetchUser = fetchUser;
  window.fetchAllStories = fetchAllStories;
  window.createStory = createStory;
  window.deleteStory = deleteStory;

  window.createResponse = createResponse;

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root);
})