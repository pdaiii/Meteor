import React from 'react';
import { Link } from 'react-router-dom';

const ResponseItems = (props) => {
  return(
    <div className="response-items-container">
      <div className="response-items">
        <Link to={`/users/${props.response.author_id}`}>
          <div className="response-items-profile-pic-icon">
            <i className="fas fa-user-circle"></i>
          </div>
          <h1 className="response-items-author">{props.response.author}</h1>
        </Link>
        <h2 className="response-items-body">{props.response.body}</h2>
        
      </div>
    </div>
  );
}

export default ResponseItems;