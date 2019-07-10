import { connect } from 'react-redux';
import StoryIndex from './story_index';
import { fetchAllStories } from '../../actions/story_actions';

const mapStateToProps = (state) => ({
  stories: state.entities.stories
});

const mapDispatchToProps = dispatch => ({
  fetchAllStories: () => dispatch(fetchAllStories())
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryIndex);