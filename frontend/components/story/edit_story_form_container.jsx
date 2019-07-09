import React from 'react';
import { connect } from 'react-redux';
import { fetchStory, updateStory } from '../../actions/story_actions';
import StoryForm from './story_form';

const mapStateToProps = (state, ownProps) => {
  return ({
    story: state.entities.stories[ownProps.match.params.storyId],
    formType: 'Edit Story',
    currentUserId: state.session.id
  });
};

const mapDispatchToProps = dispatch => ({
  fetchStory: (id) => dispatch(fetchStory(id)),
  submitStory: (story) => dispatch(updateStory(story))
});

class StoryEditForm extends React.Component {
  render() {
    return (
      <StoryForm 
        story={this.props.story}
        formType={this.props.formType}
        submitStory={this.props.submitStory}
        history={this.props.history}
        currentUserId={this.props.currentUserId}
      />
    );
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(StoryEditForm);