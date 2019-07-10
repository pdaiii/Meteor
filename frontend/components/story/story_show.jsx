import React from 'react';

class StoryShow extends React.Component {
  componentDidMount() {
    this.props.fetchStory(this.props.match.params.storyId);
    window.scroll(0, 0);
  }

  render() {
    if(!this.props.story){
      return null;
    }
    return (
      <div className="story-show-position">
        <div className="story-show-container">
          <header className="story-show-header">
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