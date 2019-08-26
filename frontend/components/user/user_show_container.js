import { connect } from 'react-redux';
import UserShow from './user_show';
import { fetchUser } from '../../actions/user_actions';
import { fetchAllStories } from '../../actions/story_actions';

const mapStateToProps = (state, ownProps) => {
  return({
    user: state.entities.users[ownProps.match.params.userId],
    stories: state.entities.stories,
    currentUserId: state.session.id
  });
};

const mapDispatchToProps = dispatch => ({
  fetchUser: (id) => dispatch(fetchUser(id)),
  // updateUser: (id) => dispatch(updateUser(id)),
  // followUser: (id) => dispatch(followUser(id)),
  // unfollowUser: (id) => dispatch(unfollowUser(id)),
  fetchAllStories: () => dispatch(fetchAllStories())
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);