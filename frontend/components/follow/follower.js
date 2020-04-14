import React from 'react';
import { connect } from 'react-redux';
import { fetchAllFollowers } from '../../actions/follow_actions';
import { fetchUser } from '../../actions/user_actions';

const mapStateToProps = (state, ownProps) => ({
  follows: state.entities.follows,
  user: state.entities.users[ownProps.match.params.userId]
});

const mapDispatchToProps = (dispatch) => ({
  fetchAllFollowers: (user_id) => dispatch(fetchAllFollowers(user_id)),
  fetchUser: (user_id) => dispatch(fetchUser(user_id))
});

class Follower extends React.Component {
  constructor(props) {
    super(props);
  }

  // componentWillMount() {
  //   this.props.fetchUser(this.props.match.params.userId)
  //   this.props.fetchAllFollowers(this.props.match.params.userId);
  // }

  UNSAFE_componentWillMount() {
    this.props.fetchUser(this.props.match.params.userId)
    this.props.fetchAllFollowers(this.props.match.params.userId);
  }

  followers() {
    let followerInfo = [];
    let that = this;
    Object.values(this.props.follows).forEach(follow => {
      if (follow.followee.id === that.props.user.id) {
        followerInfo.push(follow);
      }
    });
    let follows = followerInfo.map(follower => {
      return (
        <div className="follow" key={follower.id}>
          <div className="follow-items">
            <div className="user-profile-pic-icon">
              <i className="fas fa-user-circle"></i>
            </div>
            <div className="follow-profile">
              <p className="follow-username">{follower.follower.username}</p>
              <button className="follow-btn">Follow</button>
            </div>
          </div>
        </div>
      )
    })
    
    if(followerInfo.length > 0) {
      return (
        <div>
          {follows}
        </div>
      )
    }
    else {
      return (
        <p className="no-follows"><b>{this.props.user.username} has no followers.</b></p>
      )
    }
  }

  render() {
    if(!this.props.user) return null;
    return (
      <div className="follow-container">
        <div className="user-follows-container">
          <p className="follow-title"><b>{this.props.user.username} is followed by</b></p>
          {this.followers()}
        </div>
      </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Follower);