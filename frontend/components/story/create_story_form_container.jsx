import { connect } from 'react-redux';
import { createStory, clearErrors } from '../../actions/story_actions';
import StoryForm from './story_form';

const mapStateToProps = (state) => {
  return({
    // Error logging
    errors: state.errors.story,
    story: { title: "", body: "", image: null },
    formType: 'Create Story',
    currentUserId: state.session.id
  });
};

const mapDispatchToProps = dispatch => ({
  clearErrors: () => dispatch(clearErrors()),
  submitStory: (story) => dispatch(createStory(story))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryForm);