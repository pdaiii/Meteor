import React from 'react';
import { Link } from 'react-router-dom';
import { monthDay } from '../../util/month_day_util';
import { timeToRead } from '../../util/time_to_read_util';


const PopularStories = (props) => {
  let formattedDate1 = monthDay(props.stories[0].created_at);
  let formattedDate2 = monthDay(props.stories[1].created_at);
  let formattedDate3 = monthDay(props.stories[2].created_at);
  let formattedDate4 = monthDay(props.stories[3].created_at);

  return(
    <div className="popular-stories-container">
      <h1 className="popular-on-meteor">Popular on Meteor</h1>
      <div className="articles">
        <p className="popular-story-num">01</p>
        <div className="popular-story-content">
          <Link to={`/stories/${props.stories[0].id}`}>
            <h1 className="popular-story-titles">{props.stories[0].title}</h1>
          </Link>
          <div className="popular-story-info">
            <Link to={`/users/${props.stories[0].author_id}`}>
              <h2 className="popular-story-authors">{props.stories[0].author}</h2>
            </Link>
            <div className="popular-story-date-time">
              <h2>{formattedDate1} &#183;&nbsp;</h2>
              <h2>{timeToRead(`${props.stories[0].body}`)} min read</h2>
            </div>
          </div>
        </div>
      </div>
      <div className="articles">
        <p className="popular-story-num">02</p>
        <div className="popular-story-content">
          <Link to={`/stories/${props.stories[1].id}`}>
            <h1 className="popular-story-titles">{props.stories[1].title}</h1>
          </Link>
          <div className="popular-story-info">
            <Link to={`/users/${props.stories[1].author_id}`}>
              <h2 className="popular-story-authors">{props.stories[1].author}</h2>
            </Link>
            <div className="popular-story-date-time">
              <h2>{formattedDate2} &#183;&nbsp;</h2>
              <h2>{timeToRead(`${props.stories[1].body}`)} min read</h2>
            </div>
          </div>
        </div>
      </div>
      <div className="articles">
        <p className="popular-story-num">03</p>
        <div className="popular-story-content">
          <Link to={`/stories/${props.stories[2].id}`}>
            <h1 className="popular-story-titles">{props.stories[2].title}</h1>
          </Link>
          <div className="popular-story-info">
            <Link to={`/users/${props.stories[2].author_id}`}>
              <h2 className="popular-story-authors">{props.stories[2].author}</h2>
            </Link>
            <div className="popular-story-date-time">
              <h2>{formattedDate3} &#183;&nbsp;</h2>
              <h2>{timeToRead(`${props.stories[2].body}`)} min read</h2>
            </div>
          </div>
        </div>
      </div>
      <div className="articles">
        <p className="popular-story-num">04</p>
        <div className="popular-story-content">
          <Link to={`/stories/${props.stories[3].id}`}>
            <h1 className="popular-story-titles">{props.stories[3].title}</h1>
          </Link>
          <div className="popular-story-info">
            <Link to={`/users/${props.stories[3].author_id}`}>
              <h2 className="popular-story-authors">{props.stories[3].author}</h2>
            </Link>
            <div className="popular-story-date-time">
              <h2>{formattedDate4} &#183;&nbsp;</h2>
              <h2>{timeToRead(`${props.stories[3].body}`)} min read</h2>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default PopularStories;