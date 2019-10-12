import { createStore, applyMiddleware } from 'redux';
// Debugging on the console
import logger from 'redux-logger';
// Implement asynchronous function calls
import thunk from 'redux-thunk';
// Handles reducer for entire store
import rootReducer from '../reducers/root_reducer';

const configureStore = (preloadedState = {}) => {
    return createStore(
        rootReducer,
        // Uploads preloadedState or persists the current user and session.
        preloadedState,
        applyMiddleware(thunk, logger)
        // applyMiddleware(thunk)
    )
};

export default configureStore;