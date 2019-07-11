import React from 'react';

const PopularStories = (props) => {
  return(
    <div className="popular-stories-container">
      <h1 className="popular-on-meteor">Popular on Meteor</h1>
      <div className="articles">
        <p className="popular-story-num">01</p>
        <div className="popular-story-links">
          <h1 className="popular-story-titles">{props.stories[0].title}</h1>
          <h2 className="popular-story-authors">{props.stories[0].author}</h2>
        </div>
      </div>
      <div className="articles">
        <p className="popular-story-num">02</p>
        <div className="popular-story-links">
          <h1 className="popular-story-titles">{props.stories[1].title}</h1>
          <h2 className="popular-story-authors">{props.stories[1].author}</h2>
        </div>
      </div>
      <div className="articles">
        <p className="popular-story-num">03</p>
        <div className="popular-story-links">
          <h1 className="popular-story-titles">{props.stories[2].title}</h1>
          <h2 className="popular-story-authors">{props.stories[2].author}</h2>
        </div>
      </div>
      <div className="articles">
        <p className="popular-story-num">04</p>
        <div className="popular-story-links">
          <h1 className="popular-story-titles">{props.stories[3].title}</h1>
          <h2 className="popular-story-authors">{props.stories[3].author}</h2>
        </div>
      </div>
    </div>
  );
}

export default PopularStories;