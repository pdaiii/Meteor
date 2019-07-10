import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { deleteStory } from '../../actions/story_actions';

const mapStateToProps = state => ({
  currentUserId: state.session.id
});

const mapDispatchToProps = dispatch => ({
  deleteStory: (id) => dispatch(deleteStory(id))
});

class UserStoryPost extends React.Component {
  handleDelete() {
    return event => {
      event.preventDefault();
      this.props.deleteStory(this.props.story.id);
    };
  }

  render() {
    return (
      
      <div className="user-story-container">
        <div className="user-story">
          <nav className="user-story-nav">
            <div className="user-story-profile">
              <div className="user-story-profile-pic">
                <i className="fas fa-user-circle"></i>
              </div>
              <h2 className="user-story-author">{this.props.story.author}</h2>
            </div>
            <div className="user-story-btns">
              <Link to={`/stories/${this.props.story.id}/edit`} className="user-story-buttons">
                <i className="far fa-edit"></i>
              </Link>
              <button className="user-story-buttons" onClick={this.handleDelete()}>
                <i className="fas fa-trash"></i>
              </button>
            </div>
          </nav>

          <Link to={`/stories/${this.props.story.id}`}>
            <div className="user-story-img">
              <img src={`${this.props.story.image}`} />
            </div>
            <h1 className="user-story-title">{this.props.story.title}</h1>
            <h2 className="user-story-body">{this.props.story.body}</h2>
          </Link>

          <footer className="user-story-footer">
            <p>Claps</p>
            <p>Responses</p>
          </footer>

        </div>
      </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(UserStoryPost);