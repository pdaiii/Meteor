import { createStore, applyMiddleware } from 'redux';
// Debugging on the console
import logger from 'redux-logger';
// Implement asynchronous function calls
import thunk from 'redux-thunk';
// Handles reducer for entire store
import rootReducer from '../reducers/root_reducer';

const middlewares = [thunk];

if (process.env.NODE_ENV !== 'production') {
    middlewares.push(logger);
}

const configureStore = (preloadedState = {}) => {
    return createStore(
        rootReducer,
        // Uploads preloadedState or persists the current user and session.
        preloadedState,
        // Use logger only in production environments. Otherwise only use thunk.
        // applyMiddleware(thunk, logger)
        // applyMiddleware(thunk)
        applyMiddleware(...middlewares)
    );
};

export default configureStore;