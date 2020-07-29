import { combineReducers } from 'redux';

import sessionErrorsReducer from './session_errors_reducer';
import storyErrorsReducer from './story_errors_reducer';

const errorsReducer = combineReducers({
    // Account Access/Creation Errors
    session: sessionErrorsReducer,
    // Story Form Errors
    story: storyErrorsReducer
});

export default errorsReducer;