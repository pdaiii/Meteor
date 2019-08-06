import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { monthDay } from '../../util/month_day_util';
import { timeToRead } from '../../util/time_to_read_util';
import { fetchAllStories } from '../../actions/story_actions';

const mapStateToProps = state => ({
  stories: state.entities.stories
});

const mapDispatchToProps = dispatch => ({
  fetchAllStories: () => dispatch(fetchAllStories())
});

class SearchBar extends React.Component{
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    let searchEntry = document.getElementById("search-text").value;
    document.getElementById('search-text').value = '';
    this.props.history.push({
      pathname: '/search',
      search: `?q=${searchEntry}`
    });
  }

  componentWillMount() {
    this.props.fetchAllStories();
  }

  render() {
    let stories = Object.values(this.props.stories);
    if(stories.length === 0) return null;
    let entries = [];
    let searchEntry = this.props.location.search.slice(3);
    stories.map(story => {
      if (story.body.includes(searchEntry)) {
        entries.push(story);
      }
    });
    if(searchEntry === '') entries = [];
    let top5Entries = entries.sort();
    let top5 = top5Entries.map(entry => {
      return (
        <div className="user-story" key={entry.id}>
          <nav className="user-story-nav">
            <div className="user-story-profile">
              <div className="user-story-profile-pic">
                <i className="fas fa-user-circle"></i>
              </div>
              <div className="user-story-info">
                <h2 className="user-story-author">{entry.author}</h2>
                <div className="user-story-date-time">
                  <h2>{monthDay(entry.created_at)} &#183;&nbsp;</h2>
                  <h2>{timeToRead(`${entry.body}`)} min read</h2>
                </div>
              </div>
            </div>
          </nav>

          <Link to={`/stories/${entry.id}`}>
            <div className="user-story-img">
              <img src={`${entry.image}`} />
            </div>
            <h1 className="user-story-title">{entry.title}</h1>
            <h2 className="user-story-body">{entry.body}</h2>
          </Link>

          <footer className="user-story-footer">
            <button><i className='far fa-thumbs-up'></i></button>
            <p>{entry.response_ids.length} responses</p>
          </footer>
        </div>
      )
    })

    return (
      <div>
        <div className="user-story-container">
          <form onSubmit={this.handleSubmit}>
            <input id="search-text" className="search-text" type="text" />
          </form>
          <p className="search-story-txt">Stories</p>
          {top5}
        </div>
      </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(SearchBar);