import React from 'react';
import { Link } from 'react-router-dom';

class ResponseItems extends React.Component {
  handleDelete(){
    return event => {
      event.preventDefault();
      this.props.deleteResponse(this.props.response.id);
    }
  }

  render() {
    return (
      <div className="response-items-container">
        <div className="response-items">
          <Link to={`/users/${this.props.response.author_id}`}>
            <nav className="response-items-nav">
              <div className="response-items-profile-pic-icon">
                <i className="fas fa-user-circle"></i>
              </div>
              <button className="response-items-delete" onClick={this.handleDelete()}>
                <i className="fas fa-trash"></i>
              </button>
            </nav>

            <h1 className="response-items-author">{this.props.response.author}</h1>
          </Link>
          <h2 className="response-items-body">{this.props.response.body}</h2>
          <p>&#128079;</p>
        </div>
      </div>
    );
  };
}

export default ResponseItems;