import {connect} from 'react-redux';
import StoryShow from './story_show';
import { fetchStory } from '../../actions/story_actions';
import { openModal } from '../../actions/modal_actions';

const mapStateToProps = (state, ownProps) => {
  return ({
    story: state.entities.stories[ownProps.match.params.storyId],
    currentUserId: state.session.id 
  })
};

const mapDispatchToProps = dispatch => ({
  fetchStory: (id) => dispatch(fetchStory(id)),
  openModal: (modal) => dispatch(openModal(modal))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryShow);