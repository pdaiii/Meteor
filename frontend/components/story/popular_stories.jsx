import React from 'react';
import { Link } from 'react-router-dom';

const PopularStories = (props) => {
  const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
  let dateTime1 = new Date(props.stories[0].created_at);
  let dateTime2 = new Date(props.stories[1].created_at);
  let dateTime3 = new Date(props.stories[2].created_at);
  let dateTime4 = new Date(props.stories[3].created_at);
  let formattedDate1 = months[dateTime1.getMonth()] + " " + dateTime1.getDate() + ", "
    + dateTime1.getFullYear(); 
  let formattedDate2 = months[dateTime2.getMonth()] + " " + dateTime2.getDate() + ", "
    + dateTime2.getFullYear(); 
  let formattedDate3 = months[dateTime3.getMonth()] + " " + dateTime3.getDate() + ", "
    + dateTime3.getFullYear(); 
  let formattedDate4 = months[dateTime4.getMonth()] + " " + dateTime4.getDate() + ", "
    + dateTime4.getFullYear(); 

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
            <h3 className="popular-story-create-dates">{formattedDate1}</h3>
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
            <h3 className="popular-story-create-dates">{formattedDate1}</h3>
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
            <h3 className="popular-story-create-dates">{formattedDate1}</h3>
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
            <h3 className="popular-story-create-dates">{formattedDate1}</h3>
          </div>
        </div>
      </div>
    </div>
  );
}

export default PopularStories;