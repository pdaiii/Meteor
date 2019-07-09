import React from 'react';
import { Link } from 'react-router-dom';

class StoryShow extends React.Component {
  componentDidMount() {
    // Unsure
    // this.props.fetchStory(this.props.match.params.storyId);
    window.scroll(0, 0);
  }

  render() {
    return (
      <div className="story-show-position">
        <div className="story-show-container">
          <header className="story-show-header">
            {/* <Link to={`stories/${this.props.story.id}/edit`}>
              <button className="story-show-update-btn">Update</button>
            </Link> */}
            <h1 className="story-show-title">{this.props.story.title}</h1>

            <div className="story-show-author-div">
              <div className="story-show-profile-pic-icon">
                <i className="fas fa-user-circle"></i>
              </div>
              <h1 className="story-show-author">{this.props.story.author}</h1>
            </div>
          </header>

          <div className="story-show-img">
            <img src={`${this.props.story.image}`} />
          </div>

          <h2 className="story-show-body">{this.props.story.body}</h2>

          <footer className="story-show-footer">
            <p>Claps</p>
            <p>Responses</p>
          </footer>
        </div>
      </div>
      
    );
  }

}

export default StoryShow;