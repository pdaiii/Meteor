import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { monthDay } from '../../util/month_day_util';
import { timeToRead } from '../../util/time_to_read_util';
import { fetchAllStories } from '../../actions/story_actions';
// import UserStoriesContainer from '../user/user_stories_container';

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

  // componentWillMount() {
  //   this.props.fetchAllStories();
  // }

  UNSAFE_componentWillMount() {
    this.props.fetchAllStories();
  }

  render() {
    let stories = Object.values(this.props.stories);
    if(stories.length === 0) {
      return 'No stories found.';
    }
    let entries = [];
    // Why are we slicing 3? Grabbing the query after the initial '?q='.
    let searchEntry = this.props.location.search.slice(3);
    stories.map(story => {
      let body = story.body.toLowerCase();
      let entry = searchEntry.toLowerCase();
      if (body.includes(entry)) {
        entries.push(story);
      }
    });
    if(searchEntry === '') entries = [];
    // Take first 5 entries. Not sure how it is sorted.
    let top5Entries = entries.sort().slice(0,5);
    
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

            {/* Remove the option to like(thumbs up) stories resulting from the search */}
            <button><i className='far fa-thumbs-up'></i></button>
            <p>{entry.response_ids.length} response</p>
          </footer>
        </div>
      )
    })
    if(top5.length === 0) {
      top5 = 'No stories found.'
    }
    return (
      <div className="search-story-container">
        <div className="user-story-container">
          <form onSubmit={this.handleSubmit}>
            <input id="search-text" className="search-text" type="text" placeholder={searchEntry}/>
          </form>

          <div className="search-links">
            <a><b>Stories</b></a>
            &nbsp; &nbsp; &nbsp;
            <a>People</a>
            &nbsp; &nbsp; &nbsp;
            <a>Publications</a>
            &nbsp; &nbsp; &nbsp;
            <a>Tags</a>
          </div>

          <p className="search-story-txt">STORIES</p>
          {top5}
        </div>
      </div>
    )
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(SearchBar);