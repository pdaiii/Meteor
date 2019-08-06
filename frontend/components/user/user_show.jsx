import React from 'react';
import { Link } from 'react-router-dom';
import UserStoriesContainer from './user_stories_container';

class UserShow extends React.Component {
  componentDidMount() {
    this.props.fetchAllStories();
    this.props.fetchUser(this.props.match.params.userId);
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

    return(
      <div>
        <div className="profile-page-container">
          <nav className="user-profile-nav">
            <div className="user-profile-info">
              <div className="user-profile-user">
                <h1 className="user-profile-username">{this.props.user.username}</h1>
                <button className="user-profile-follow-btn">Follow</button>
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