import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { createResponse } from '../../actions/response_actions';
import { fetchStory } from '../../actions/story_actions';
import Response from './response';

// WHERE ARE OWN PROPS COMING FROM??
const mapStateToProps = (state, ownProps) => {
  return({
    response: { body: '', story_id: ownProps.match.params.storyId},
    story: state.entities.stories[ownProps.match.params.storyId]
  });
};

const mapDispatchToProps = dispatch => ({
  fetchStory: (id) => dispatch(fetchStory(id)),
  createResponse: (response) => dispatch(createResponse(response))
});

// Access to URL using withRouter
export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Response));