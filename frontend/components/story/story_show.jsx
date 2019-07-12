import React from 'react';
import ResponseContainer from '../responses/response_container';
import ResponseItems from '../responses/response_items';
import { Link } from 'react-router-dom';

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

    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    let dateTime;
    let formattedDate;
    dateTime = new Date(this.props.story.created_at);
    formattedDate = months[dateTime.getMonth()] + " " + dateTime.getDate() + ", "
      + dateTime.getFullYear(); 

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
                <div className="story-show-info">
                  <Link to={`/users/${this.props.story.author_id}`}>
                    <h1 className="story-show-author">{this.props.story.author}</h1>
                  </Link>
                  <h2 className="story-show-create-date">{formattedDate}</h2>
                </div>
              </div>
            </header>

            <div className="story-show-img">
              <img src={`${this.props.story.image}`} />
            </div>

            <h2 className="story-show-body">{this.props.story.body}</h2>

            <footer className="story-show-footer">
              <p className="clap-icon">
                <i className='far fa-thumbs-up'></i>
              </p>
              <div className="media-icons">
                <div className="twitter-icon">
                  <i className="fa fa-twitter"></i>
                </div>
                <div className="facebook-icon">
                  <i className="fa fa-facebook-official"></i>
                </div>
                <div className="bookmark-icon">
                  <i className="fa fa-bookmark-o"></i>
                </div>
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