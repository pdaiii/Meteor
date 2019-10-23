import {connect} from 'react-redux';
import StoryShow from './story_show';
import { fetchStory, updateStory, updateStoryLikes } from '../../actions/story_actions';
import { createStoryClap, fetchAllStoryClaps, destroyStoryClap } from '../../actions/story_clap_actions';
import { fetchAllResponses, deleteResponse, updateResponseClaps } 
  from '../../actions/response_actions';

const mapStateToProps = (state, ownProps) => {
  const story = state.entities.stories[ownProps.match.params.storyId];
  let likedState = false;
  // Object.values(state.entities.story_claps).forEach(story_clap => {
  //   if (story_clap.clapper_id === state.session.id) {
  //     likedState = true;
  //   }
  // })
  Object.values(state.entities.stories).forEach(story => {
    story.claps.forEach(story_clap => {
      if(story_clap.clapper_id === state.session.id) {
        likedState = true;
      }
    })
  })

  return ({
    story,
    // count: story !== undefined ? state.entities.stories[ownProps.match.params.storyId].count : 0,
    count: story !== undefined ? story.claps.length : 0,
    userHasLiked: likedState,
    storyClaps: state.entities.story_claps,
    responses: state.entities.responses,
    currentUserId: state.session.id
  })
};

const mapDispatchToProps = dispatch => ({
  fetchStory: (id) => dispatch(fetchStory(id)),
  updateStory: (story, id) => dispatch(updateStory(story, id)),
  // updateStoryLikes: (story, id) => dispatch(updateStoryLikes(story, id)),
  createStoryClap: (id) => dispatch(createStoryClap(id)),
  destroyStoryClap: (story_id, id) => dispatch(destroyStoryClap(story_id, id)),
  fetchAllStoryClaps: (id) => dispatch(fetchAllStoryClaps(id)),
  fetchAllResponses: (story_id) => dispatch(fetchAllResponses(story_id)),
  deleteResponse: (response_id) => dispatch(deleteResponse(response_id)),
  updateResponseClaps: (formData, response) => dispatch(updateResponseClaps(formData, response))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryShow);