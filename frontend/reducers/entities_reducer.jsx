import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import StoriesReducer from './stories_reducer';
import ResponsesReducer from './responses_reducer';
import FollowsReducer from './follows_reducer';
import StoryClapsReducer from './story_claps_reducer';

const entitiesReducer = combineReducers({
    users: usersReducer,
    stories: StoriesReducer,
    responses: ResponsesReducer,
    follows: FollowsReducer,
    story_claps: StoryClapsReducer
});

export default entitiesReducer;