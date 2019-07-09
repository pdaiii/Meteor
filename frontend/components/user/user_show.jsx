import React from 'react';
import { Link } from 'react-router-dom';
import UserStoriesContainer from './user_stories_container';

class UserShow extends React.Component {
  componentDidMount() {
    this.props.fetchAllStories();
  }

  getPosts() {
    // Grab all posts in the db
    let userStories = [];
    Object.values(this.props.stories).forEach(story => {
      // if(this.props.user.story_ids.includes(story.id)){
      //   userStories.push(story);
      // }
      if(this.props.user.id === story.author_id){
        userStories.push(story);
      }
    });

    let stories = userStories.map(story => {
      return(
        <UserStoriesContainer 
          key={story.id}
          story={story}
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
              <Link to="/stories/new">
                <button className="user-profile-create-story-btn">Create Story</button>
              </Link>
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