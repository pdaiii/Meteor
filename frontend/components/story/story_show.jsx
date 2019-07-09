import React from 'react';
import { Link } from 'react-router-dom';

class StoryShow extends React.Component {
  componentDidMount() {
    // Unsure
    debugger
    // this.props.fetchStory(this.props.match.params.storyId);
  }

  render() {
    return (
      <div>
        <nav className="story-show-navigation">
          <Link to={`stories/${this.props.story.id}/edit`}>
            <button className="story-show-update-btn">Update</button>
          </Link>
          <h1 className="story-show-title">{this.props.story.title}</h1>
          
          <div className="story-show-profile-pic-icon">
            <i className="fas fa-user-circle"></i>
          </div>
          <h1 className="story-show-author">{this.props.story.author}</h1>
        </nav>

        <div className="story-show-img">
          <img src={`${this.props.story.image}`} />
        </div>

        <h2 className="story-show-body">{this.props.story.body}</h2>

        <p>Claps</p>
        <p>Comments</p>
      </div>
    );
  }

}

export default StoryShow;