import { connect } from 'react-redux';
import { createStory } from '../../actions/story_actions';
import StoryForm from './story_form';

const mapStateToProps = (state) => {
  return({
    story: { title: "", body: "", image: null },
    formType: 'Create Story',
    currentUserId: state.session.id
  });
};

const mapDispatchToProps = dispatch => ({
  submitStory: (story) => dispatch(createStory(story))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryForm);