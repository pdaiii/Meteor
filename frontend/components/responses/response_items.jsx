import React from 'react';
import { Link } from 'react-router-dom';
import { monthDay } from '../../util/month_day_util';
import { timeToRead } from '../../util/time_to_read_util';

class ResponseItems extends React.Component {
  handleDelete(){
    return event => {
      event.preventDefault();
      this.props.deleteResponse(this.props.response.id);
    }
  }

  render() {
    let formattedDate = monthDay(this.props.response.created_at);

    // Delete own comments 
    let deleteOwnComments;
    if(this.props.response.author_id === this.props.currentUserId){
      deleteOwnComments =
      <button className="response-items-delete" onClick={this.handleDelete()}>
        <i className="fas fa-trash"></i>
      </button>
    }
    else{
      deleteOwnComments = null;
    }

    return (
      <div className="response-items-container">
        <div className="response-items">
          <Link to={`/users/${this.props.response.author_id}`}>
            <nav className="response-items-nav">
              <div className="response-items-profile">
                <div className="response-items-profile-pic-icon">
                  <i className="fas fa-user-circle"></i>
                </div>
                <div className="response-items-info">
                  <h1 className="response-items-author">{this.props.response.author}</h1>
                  <div className="response-items-date-time">
                    <h2>{formattedDate} &#183;&nbsp;</h2>
                    <h2>{timeToRead(`${this.props.response.body}`)} min read</h2>
                  </div>
                </div>
              </div>
              {deleteOwnComments}
            </nav>
            
          </Link>
          <h2 className="response-items-body">{this.props.response.body}</h2>
          <p>
            <button><i className='far fa-thumbs-up'></i></button>
          </p>
        </div>
      </div>
    );
  };
}

export default ResponseItems;