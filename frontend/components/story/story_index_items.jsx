import React from 'react';
import { Link } from 'react-router-dom';

const StoryIndexItems = (props) => {
  const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
  let dateTime;
  let formattedDate;
  dateTime = new Date(props.story.created_at);
  formattedDate = months[dateTime.getMonth()] + " " + dateTime.getDate() + ", "
    + dateTime.getFullYear(); 

  return (
    <div className="story-index-item-container">
      <div className="story-index-item-text">
        <Link to={`/stories/${props.story.id}`}>
          <h1 className="story-index-item-title">{props.story.title}</h1>
          <h2 className="story-index-item-body">{props.story.body}</h2>
        </Link>
      
        <div className="story-index-item-info">
          <p className="story-index-item-author">
            <Link to={`/users/${props.story.author_id}`}>{props.story.author}</Link>
          </p>
          <p className="story-index-item-create-date">{formattedDate}</p>
        </div>

      </div>

      <Link to={`/stories/${props.story.id}`}>
        <img src={`${props.story.image}`} className="story-index-item-image"/>
      </Link>
    </div>
  )
}

export default StoryIndexItems;