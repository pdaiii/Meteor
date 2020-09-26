import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
// import { fetchUser } from './util/user_util';
// import { createStory, fetchStory} from './util/story_util';
// import { fetchAllStories, deleteStory } from './actions/story_actions';
// import * as AJAX from './util/session_api_util';
// import { fetchAllResponses, createResponse } from './util/response_util';
// import {fetchAllFollowers} from './util/follow_util';

// Google Analytics
import ReactGA from 'react-ga';


import {createStoryClap, fetchStoryClaps, destroyStoryClap} from './util/story_clap_util';

function initializeReactGA() {
  ReactGA.initialize('UA-144735944-2');
  ReactGA.pageview('/homepage');
}

document.addEventListener('DOMContentLoaded', () => {

  // Google Analytics
  initializeReactGA();

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

  // window.getState = store.getState;
  // window.dispatch = store.dispatch;

  // User Auth Testing Tools
  // window.signup = signup;
  // window.login = login;
  // window.logout = logout;
  // window.signup = AJAX.signup;
  // window.fetchUser = fetchUser;
  // window.fetchAllStories = fetchAllStories;
  // window.createStory = createStory;
  // window.deleteStory = deleteStory;
  // window.fetchStory = fetchStory;
  // window.createResponse = createResponse;
  // window.fetchAllResponses = fetchAllResponses;
  // window.fetchAllFollowers = fetchAllFollowers;
  window.createStoryClap = createStoryClap;
  window.fetchStoryClaps = fetchStoryClaps;
  window.destroyStoryClap = destroyStoryClap;

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root);
})