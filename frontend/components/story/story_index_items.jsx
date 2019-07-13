import React from 'react';
import { Link } from 'react-router-dom';
import { monthDay } from '../../util/month_day_util';
import { timeToRead } from '../../util/time_to_read_util';

const StoryIndexItems = (props) => {
  let formattedDate = monthDay(props.story.created_at);

  return (
    <div className="story-index-item-container">
      <div className="story-index-item-text">
        <Link to={`/stories/${props.story.id}`}>
          <h1 className="story-index-item-title">{props.story.title}</h1>
        </Link>
      
        <Link to={`/stories/${props.story.id}`}>
          <h2 className="story-index-item-body">{props.story.body}</h2>
        </Link>

        <div className="story-index-item-info">
          <p className="story-index-item-author">
            <Link to={`/users/${props.story.author_id}`}>{props.story.author}</Link>
          </p>
          <div className="story-index-item-show-date-time">
            <h2>{formattedDate} &#183;&nbsp;</h2>
            <h2>{timeToRead(`${props.story.body}`)} min read</h2>
          </div>
        </div>

      </div>

      <Link to={`/stories/${props.story.id}`}>
        <img src={`${props.story.image}`} className="story-index-item-image"/>
      </Link>
    </div>
  )
}

export default StoryIndexItems;