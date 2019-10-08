import { connect } from 'react-redux';
import UserShow from './user_show';
import { fetchUser } from '../../actions/user_actions';
import { fetchAllStories } from '../../actions/story_actions';
import { createFollow, destroyFollow, fetchAllFollowers } from '../../actions/follow_actions';

// Props used when rendering the user show page. Accessing the current user, all stories in the DB,
// and the current user's id.
const mapStateToProps = (state, ownProps) => {
  // debugger
  let followState = 'Follow';
  Object.values(state.entities.follows).forEach(follow => {
    if(follow.follower.id === state.session.id && follow.followee.id === parseInt(ownProps.match.params.userId)) {
      followState = 'Unfollow';
    }
  })
  return({
    user: state.entities.users[ownProps.match.params.userId],
    stories: state.entities.stories,
    follows: state.entities.follows,
    currentUserId: state.session.id,
    followButton: { following: followState }
  });
};

const mapDispatchToProps = dispatch => ({
  fetchUser: (id) => dispatch(fetchUser(id)),
  fetchAllFollowers: (id) => dispatch(fetchAllFollowers(id)),
  fetchAllStories: () => dispatch(fetchAllStories()),
  createFollow: (id) => dispatch(createFollow(id)),
  destroyFollow: (id, followId) => dispatch(destroyFollow(id, followId))
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);