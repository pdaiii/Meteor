import {connect} from 'react-redux';
import StoryShow from './story_show';
import { fetchStory, updateStory, updateStoryLikes } from '../../actions/story_actions';
import { fetchAllResponses, deleteResponse } 
  from '../../actions/response_actions';

const mapStateToProps = (state, ownProps) => {
  const story = state.entities.stories[ownProps.match.params.storyId];
  return ({
    story,
    count: story !== undefined ? state.entities.stories[ownProps.match.params.storyId].count : 0,
    responses: state.entities.responses,
    currentUserId: state.session.id
  })
};

const mapDispatchToProps = dispatch => ({
  fetchStory: (id) => dispatch(fetchStory(id)),
  updateStory: (story, id) => dispatch(updateStory(story, id)),
  updateStoryLikes: (story, id) => dispatch(updateStoryLikes(story, id)),
  fetchAllResponses: (story_id) => dispatch(fetchAllResponses(story_id)),
  deleteResponse: (response_id) => dispatch(deleteResponse(response_id))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryShow);