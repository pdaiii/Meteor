import React from 'react';
import { Link } from 'react-router-dom';

const StoryIndexHero = (props) => { 
  return (
    <div className="story-index-hero-container">
      <div className="story-index-hero-left-story">
        <div className="left-story-container">
          <Link to={`stories/${props.stories[0].id}`}>
            <img src={`${props.stories[0].image}`} className="left-story-img" />
          </Link>
          <div className="left-story-text">
            <Link to={`stories/${props.stories[0].id}`}>
              <h1 className="left-story-title">{props.stories[0].title}</h1>
              <h2 className="left-story-body">{props.stories[0].body}</h2>
            </Link>
            <Link to={`users/${props.stories[0].author_id}`}>
              <p className="left-story-author">{props.stories[0].author}</p>
            </Link>
          </div>
        </div>
      </div>

      <div className="story-index-hero-middle-stories">
        <div className="middle-story-containers">
          <Link to={`stories/${props.stories[1].id}`}>
            <img src={`${props.stories[1].image}`} className="middle-story-img" />
          </Link>
          <div className="middle-story-text">
            <Link to={`stories/${props.stories[1].id}`}>
              <h1 className="middle-story-title">{props.stories[1].title}</h1>
              <h2 className="middle-story-body">{props.stories[1].body}</h2>
            </Link>
            <Link to={`users/${props.stories[1].author_id}`}>
              <p className="middle-story-author">{props.stories[1].author}</p>
            </Link>
          </div>
        </div>
        <div className="middle-story-containers">
          <Link to={`stories/${props.stories[2].id}`}>
            <img src={`${props.stories[2].image}`} className="middle-story-img" />
          </Link>
          <div className="middle-story-text">
            <Link to={`stories/${props.stories[2].id}`}>
              <h1 className="middle-story-title">{props.stories[2].title}</h1>
              <h2 className="middle-story-body">{props.stories[2].body}</h2>
            </Link>
            <Link to={`users/${props.stories[2].author_id}`}>
              <p className="middle-story-author">{props.stories[2].author}</p>
            </Link>
          </div>
        </div>
        <div className="middle-story-containers">
          <Link to={`stories/${props.stories[3].id}`}>
            <img src={`${props.stories[3].image}`} className="middle-story-img" />
          </Link>
          <div className="middle-story-text">
            <Link to={`stories/${props.stories[3].id}`}>
              <h1 className="middle-story-title">{props.stories[3].title}</h1>
              <h2 className="middle-story-body">{props.stories[3].body}</h2>
            </Link>
            <Link to={`users/${props.stories[3].author_id}`}>
              <p className="middle-story-author">{props.stories[3].author}</p>
            </Link>
          </div>
        </div>
      </div>

      <div className="story-index-hero-right-story">
        <div className="right-story-container">
          <Link to={`stories/${props.stories[4].id}`}>
            <img src={`${props.stories[4].image}`} className="right-story-img" />
          </Link>
          <div className="right-story-text">
            <Link to={`stories/${props.stories[4].id}`}>
              <h1 className="right-story-title">{props.stories[4].title}</h1>
              <h2 className="right-story-body">{props.stories[4].body}</h2>
            </Link>
            <Link to={`users/${props.stories[4].author_id}`}>
              <p className="right-story-author">{props.stories[4].author}</p>
            </Link>
          </div>
        </div>
      </div>
    </div>
  )
};

export default StoryIndexHero;