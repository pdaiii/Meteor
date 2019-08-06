import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { logout } from '../../actions/session_actions';
import { openModal } from '../../actions/modal_actions';
import { fetchAllStories } from '../../actions/story_actions';
import navBar from './navbar';

const mapStateToProps = (state) => ({
  currentUser: state.entities.users[state.session.id],
  stories: state.entities.stories
});

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  openModal: (modal) => dispatch(openModal(modal)),
  fetchAllStories: () => dispatch(fetchAllStories())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(navBar));