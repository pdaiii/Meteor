import React from 'react';
import { Link } from 'react-router-dom';
import UserStoriesContainer from './user_stories_container';

class UserShow extends React.Component {
  // When do we need to have a constructor?
  constructor(props) {
    super(props);
    this.state = this.props.followButton;
    this.follow = this.follow.bind(this);
  }

  // componentDidMount() {
  //   this.props.fetchAllStories();
  //   this.props.fetchUser(this.props.match.params.userId);
  //   this.props.fetchAllFollowers(this.props.match.params.userId);
  // }

  componentWillMount() {
    this.props.fetchAllStories();
    this.props.fetchUser(this.props.match.params.userId);
    this.props.fetchAllFollowers(this.props.match.params.userId);
  }

  // componentDidUpdate() {
  //   this.props.fetchAllFollowers(this.props.match.params.userId);
  // }

  follow() {
    event.preventDefault();
    // let formData = new FormData();
    // formData.append('follow[user_id]', this.props.user.id);
    // this.props.createFollow(formData, this.props.user.id);
    this.props.createFollow(this.props.user.id);
    let followState = 'Follow';
    let that = this;
    // If you're following the user, the set the state to 'Unfollow'
    Object.values(this.props.follows).forEach(follow => {
      debugger
      if (follow.followee.id === that.props.user.id) {
        followState = 'Unfollow';
      }
    })
    debugger
    this.setState({following: followState});
  }

  getPosts() {
    // Grab all posts in the db
    let userStories = [];
    Object.values(this.props.stories).forEach(story => {
      if(this.props.user.id === story.author_id){
        userStories.push(story);
      }
    });

    let stories = userStories.map(story => {
      return(
        <UserStoriesContainer 
          key={story.id}
          story={story}
          user={this.props.user}
        />
      )
    });

    if(userStories.length > 0) {
      return (
        <div>
          <div className="user-show-stories-title">
            <h3>Stories</h3>
          </div>
          {stories}
        </div>
      )
    }
    else {
      return (
        <div className="user-no-post-msg">{this.props.user.username} has no posts currently.</div>
      )
    }
  }

  render() {
    if(!this.props.user){
      return null;
    }
    let createStory;
    if(this.props.currentUserId === this.props.user.id){
      createStory = <Link to="/stories/new">
        <button className="user-profile-create-story-btn">Create Story</button>
      </Link>;
    }
    else{
      createStory = null;
    }
    let followBtn;
    if (this.props.match.params.userId === this.props.currentUserId) {
      followBtn = null;
    }
    else {
      followBtn = <button className="user-profile-follow-btn" onClick={this.follow}>{this.state.following}</button>;
    }

    return(
      <div>
        <div className="profile-page-container">
          <nav className="user-profile-nav">
            <div className="user-profile-info">
              <div className="user-profile-user">
                <h1 className="user-profile-username">{this.props.user.username}</h1>

                <div className="follows">
                  <p>
                    Following &nbsp;&nbsp; Followers
                  </p>
                </div>

                {/* Render Follow/Unfollow depending on the state. */}
                {/* Invoking the function onClick means when the function is being processed,
                 that function is called*/}
                {/* <button className="user-profile-follow-btn" onClick={this.follow}>Follow</button> */}
                {followBtn}
              </div>

              <div className="user-profile-pic-icon">
                <i className="fas fa-user-circle"></i>
              </div>
            </div>

            {/* If user is logged in, can see Create Story button */}
            <div className="user-profile-create-story">
              {createStory}
            </div>
            <hr />
          </nav>
          {this.getPosts()}
        </div>
      </div>
    )
  }
};

export default UserShow;