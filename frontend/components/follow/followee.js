import React from 'react';
import { connect } from 'react-redux';
import { fetchAllFollowers } from '../../actions/follow_actions';
import { fetchUser } from '../../actions/user_actions';

const mapStateToProps = (state, ownProps) => {
  return ({
    follows: state.entities.follows,
    user: state.entities.users[ownProps.match.params.userId]
  });
};

const mapDispatchToProps = (dispatch) => ({
  fetchAllFollowers: (user_id) => dispatch(fetchAllFollowers(user_id)),
  fetchUser: (user_id) => dispatch(fetchUser(user_id))
});

class Followee extends React.Component {
  constructor(props) {
    super(props);
  }

  // componentWillMount() {
  //   this.props.fetchUser(this.props.match.params.userId);
  //   this.props.fetchAllFollowers(this.props.match.params.userId);
  // }

  UNSAFE_componentWillMount() {
    this.props.fetchUser(this.props.match.params.userId);
    this.props.fetchAllFollowers(this.props.match.params.userId);
  }

  isFollowing() {
    let followeeInfo = [];
    let that = this;
    Object.values(this.props.follows).forEach(follow => {
      if (follow.follower.id === that.props.user.id) {
        followeeInfo.push(follow);
      }
    });
    let follows = followeeInfo.map(follower => {
      return (
        <div className="follow" key={follower.id}>
          <div className="follow-items">
            <div className="follow-profile-pic-icon">
              <i className="fas fa-user-circle"></i>
            </div>
            <div className="follow-profile">
              <p className="follow-username">{follower.followee.username}</p>
              <button className="follow-btn">Follow</button>
            </div>
          </div>
        </div>
      )
    })

    if (followeeInfo.length > 0) {
      return (
        <div>
          {follows}
        </div>
      )
    }
    else {
      return (
        <p className="no-follows"><b>{this.props.user.username} is not following anyone.</b></p>
      )
    }
  }

  render() {
    if(!this.props.user) return null;
    return (
      <div>
        <div className="follow-container">
          <div className="user-follows-container">
            <p className="follow-title"><b>{this.props.user.username} is following</b></p>
            {this.isFollowing()}
          </div>
        </div>
      </div>

    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Followee);