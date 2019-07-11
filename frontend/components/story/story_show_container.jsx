import {connect} from 'react-redux';
import StoryShow from './story_show';
import { fetchStory } from '../../actions/story_actions';
import { fetchAllResponses, deleteResponse } 
  from '../../actions/response_actions';

const mapStateToProps = (state, ownProps) => {
  return ({
    story: state.entities.stories[ownProps.match.params.storyId],
    responses: state.entities.responses,
    currentUserId: state.session.id 
  })
};

const mapDispatchToProps = dispatch => ({
  fetchStory: (id) => dispatch(fetchStory(id)),
  fetchAllResponses: (story_id) => dispatch(fetchAllResponses(story_id)),
  deleteResponse: (response_id) => dispatch(deleteResponse(response_id))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryShow);