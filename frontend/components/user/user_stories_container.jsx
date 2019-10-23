import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { deleteStory } from '../../actions/story_actions';
import { updateStoryLikes } from '../../actions/story_actions';
import { fetchAllStoryClaps, createStoryClap, destroyStoryClap } from '../../actions/story_clap_actions';
import { fetchAllStories } from '../../actions/story_actions';
import { monthDay } from '../../util/month_day_util';
import { timeToRead } from '../../util/time_to_read_util';

const mapStateToProps = state => {
  let likedState = false;
  Object.values(state.entities.story_claps).forEach(story_clap => {
    if(story_clap.clapper_id === state.session.id) {
      likedState = true;
    }
  })

  return({
    currentUserId: state.session.id,
    storyClaps: state.entities.story_claps,
    userHasLiked: likedState
    // userHasLiked: {likedState: likedState},
    // clapCount: {count: count}
  })
};

const mapDispatchToProps = dispatch => ({
  deleteStory: (id) => dispatch(deleteStory(id)),
  updateStoryLikes: (story, id) => dispatch(updateStoryLikes(story, id)),
  createStoryClap: (clap, id) => dispatch(createStoryClap(clap, id)),
  fetchAllStoryClaps: (id) => dispatch(fetchAllStoryClaps(id)),
  destroyStoryClap: (story_id, id) => dispatch(destroyStoryClap(story_id, id)),
  fetchAllStories: () => dispatch(fetchAllStories())
});

class UserStoryPost extends React.Component {
  constructor(props) {
    super(props);
    this.state = {count: props.story.claps.length, likeState: this.props.userHasLiked};
    this.handleDelete = this.handleDelete.bind(this);
    // this.updateClapCounter = this.updateClapCounter.bind(this);
    this.storyClap = this.storyClap.bind(this);
  }

  componentDidMount() {
    this.props.fetchAllStoryClaps(this.props.story.id);
  }

  handleDelete() {
    this.props.deleteStory(this.props.story.id);
  }

  // updateClapCounter() {
  //   const formData = new FormData();
  //   formData.append('story[count]', this.props.story.count+1);
  //   this.props.updateStoryLikes(formData, this.props.story.id);
  // }

  storyClap() {
    if(this.state.likeState) {
      let that = this;
      Object.values(this.props.storyClaps).forEach(story_clap => {
        if (story_clap.clapper_id === that.props.currentUserId) {
          that.props.destroyStoryClap(that.props.story.id, story_clap.id);
        }
      })
      this.setState({
        count: this.state.count-=1,
        likeState: false
      })
    }
    else {
      const formData = new FormData();
      formData.append('story_clap[story_id]', this.props.story.id);
      formData.append('story_clap[clapper_id]', this.props.currentUserId);
      this.props.createStoryClap(formData, this.props.story.id);
      this.setState({
        count: this.state.count+=1,
        likeState: true
      })
    }
  }

  render() {
    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    let dateTime;
    let formattedDate;
    dateTime = new Date(this.props.story.created_at);
    formattedDate = months[dateTime.getMonth()] + " " + dateTime.getDate() + ", "
      + dateTime.getFullYear(); 

    let userStoryBtns;
    if(this.props.user.id === this.props.currentUserId){
      userStoryBtns =
      <div className="user-story-btns">
        <Link to={`/stories/${this.props.story.id}/edit`} className="user-story-buttons">
          <i className="far fa-edit"></i>
        </Link>
        <button className="user-story-buttons" onClick={this.handleDelete}>
          <i className="fas fa-trash"></i>
        </button>
      </div>
    }
    else{
      userStoryBtns = null;
    }

    return (
      <div className="user-story-container">
        <div className="user-story">
          <nav className="user-story-nav">
            <div className="user-story-profile">
              <div className="user-story-profile-pic">
                <i className="fas fa-user-circle"></i>
              </div>
              <div className="user-story-info">
                <h2 className="user-story-author">{this.props.story.author}</h2>
                <div className="user-story-date-time">
                  <h2>{monthDay(this.props.story.created_at)} &#183;&nbsp;</h2>
                  <h2>{timeToRead(`${this.props.story.body}`)} min read</h2>
                </div>
              </div>
            </div>
            {userStoryBtns}
          </nav>

          <Link to={`/stories/${this.props.story.id}`}>
            <div className="user-story-img">
              <img src={`${this.props.story.image}`} />
            </div>
            <h1 className="user-story-title">{this.props.story.title}</h1>
            <h2 className="user-story-body">{this.props.story.body}</h2>
          </Link>

          <footer className="user-story-footer">
            <div className="response-clap-icon">
              {/* <button className="clap-btn" onClick={this.updateClapCounter}><i className='far fa-thumbs-up'></i></button> */}
              <button className="clap-btn" onClick={this.storyClap}><i className='far fa-thumbs-up'></i></button>
              <p className="clap-counter">{this.state.count} likes</p>
            </div>
            <p>{this.props.story.response_ids.length} responses</p>
          </footer>
        </div>
      </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(UserStoryPost);