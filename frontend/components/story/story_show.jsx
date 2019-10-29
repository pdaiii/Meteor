import React from 'react';
import ResponseContainer from '../responses/response_container';
import ResponseItems from '../responses/response_items';
import { Link } from 'react-router-dom';
import { monthDay } from '../../util/month_day_util';
import { timeToRead } from '../../util/time_to_read_util';

class StoryShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = { count: this.props.count, likeState: this.props.userHasLiked };
    this.updateClapCounter = this.updateClapCounter.bind(this);
    // this.storyClap = this.storyClap.bind(this);
  }

  componentWillMount() {
    // Render show page for story.
    this.props.fetchStory(this.props.match.params.storyId);
    this.props.fetchAllResponses(this.props.match.params.storyId);
    this.props.fetchAllStoryClaps(this.props.match.params.storyId);
  }

  // When the stories have been fetched, then update the state.
  componentWillReceiveProps(nextProps) {
    if(nextProps.userHasLiked !== this.props.userHasLiked) {
      this.setState({ count: nextProps.count, likeState: nextProps.userHasLiked });
    }
  }

  // storyClap() {
  //   if (this.state.likeState) {
  //     let that = this;
  //     Object.values(this.props.storyClaps).forEach(story_clap => {
  //       if (story_clap.clapper_id === that.props.currentUserId) {
  //         that.props.destroyStoryClap(that.props.story.id, story_clap.id);
  //       }
  //     })
  //     this.setState({
  //       count: this.state.count-=1,
  //       likeState: false
  //     })
  //   }
  //   else {
  //     const formData = new FormData();
  //     formData.append('story_clap[story_id]', this.props.story.id);
  //     formData.append('story_clap[clapper_id]', this.props.currentUserId);
  //     this.props.createStoryClap(formData, this.props.story.id);
  //     this.setState({
  //       count: this.state.count+=1,
  //       likeState: true
  //     })
  //   }
  // }

  // Do not need to update all of the story details when updating the clap counter.
  updateClapCounter(event) {
    const formData = new FormData();
    formData.append('story[title]', this.props.story.title);
    formData.append('story[body]', this.props.story.body);
    formData.append('story[image]', this.props.story.image);
    formData.append('story[count]', this.props.story.count+1);
    this.props.updateStoryLikes(formData, this.props.story.id);
  }

  render() {
    let creatingResponses;
    let responses;
    let storyResponses;
    if(!this.props.story){
      return null;
    }
    if(this.props.currentUserId){
      creatingResponses = 
      <ResponseContainer
        key={this.props.story.id}
        story={this.props.story}
      />
    }
    else{
      creatingResponses = null;
    }
    responses = Object.values(this.props.responses);
    storyResponses = responses.map(response => {
      if (response.story_id === this.props.story.id) {
        return (
          <ResponseItems
            key={response.id}
            response={response}
            updateResponseClaps={this.props.updateResponseClaps}
            deleteResponse={this.props.deleteResponse}
            currentUserId={this.props.currentUserId}
          />
        )
      }
    })
    var body_text = this.props.story.body;
    var formatted_text_arr = body_text.split("\n");
    let story_txt = formatted_text_arr.map(line => {
      return(
        <div>
          {line}
          <br></br>
          <br></br>
        </div>
      )
    });
    return (
      <div className="story-show">
        <div className="story-show-position">
          <div className="story-show-container">
            <header className="story-show-header">
              <h1 className="story-show-title">{this.props.story.title}</h1>

              <div className="story-show-author-div">
                <div className="story-show-profile-pic-icon">
                  <Link to={`/users/${this.props.story.author_id}`}>
                    <i className="fas fa-user-circle"></i>
                  </Link>
                </div>
                <div className="story-show-info">
                  <Link to={`/users/${this.props.story.author_id}`}>
                    <h1 className="story-show-author">{this.props.story.author}</h1>
                  </Link>
                  <div className="story-show-date-time">
                    <h2>{monthDay(this.props.story.created_at)} &#183;&nbsp;</h2>
                    <h2>{timeToRead(`${this.props.story.body}`)} min read</h2>
                  </div>
                </div>
              </div>
            </header>

            <div className="story-show-img">
              <img src={`${this.props.story.image}`} />
            </div>

            <h2 className="story-show-body">{story_txt}</h2>
            <footer className="story-show-footer">
              
              <div className="clap-icon">
                <button className="clap-btn" onClick={() => this.updateClapCounter()}><i className='far fa-thumbs-up'></i></button>
                {/* <button className="clap-btn" onClick={this.storyClap}><i className='far fa-thumbs-up'></i></button> */}
                {/* <p className="clap-counter">{this.state.count} likes</p> */}
                <p className="clap-counter">{this.props.story.count} claps</p>
              </div>

              {/* <div className="media-icons">
                <div className="twitter-icon">
                  <button><i className="fa fa-twitter"></i></button>
                </div>
                <div className="facebook-icon">
                  <button><i className="fa fa-facebook-official"></i></button>
                </div>
                <div className="bookmark-icon">
                  <button><i className="fa fa-bookmark-o"></i></button>
                </div>
              </div> */}
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