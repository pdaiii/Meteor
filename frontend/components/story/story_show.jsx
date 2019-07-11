import React from 'react';
import ResponseContainer from '../responses/response_container';
import ResponseItems from '../responses/response_items';

class StoryShow extends React.Component {
  componentDidMount() {
    this.props.fetchStory(this.props.match.params.storyId);
    this.props.fetchAllResponses(this.props.match.params.storyId);
    window.scroll(0, 0);
  }

  render() {
    let creatingResponses;
    let responses;
    let storyResponses;
    if(!this.props.story){
      return null;
    }

    // Render the write response form for logged in users.
    if(this.props.currentUserId){
      creatingResponses = 
      <ResponseContainer
        story={this.props.story}
      />
    }
    else{
      creatingResponses = null;
    }
    // Get all of the responses for this story.
    responses = Object.values(this.props.responses);
    storyResponses = responses.map(response => {
      if (response.story_id === this.props.story.id) {
        return (
          <ResponseItems
            key={response.id}
            response={response}
            deleteResponse={this.props.deleteResponse}
            currentUserId={this.props.currentUserId}
          />
        )
      }
    })
    return (
      <div className="story-show">
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
              <p className="clap-icon">&#128079;</p>
              <div className="media-icons">
                <i className="fa fa-twitter"></i>
                <i className="fa fa-facebook-official"></i>
                <i className="fa fa-bookmark-o"></i>
              </div>
            </footer>

            <div className="story-show-response">
              <p className="responses-title">Responses</p>
              {creatingResponses}
              {storyResponses}
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default StoryShow;