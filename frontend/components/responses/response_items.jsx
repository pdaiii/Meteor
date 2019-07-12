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
    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    let dateTime;
    let formattedDate;
    dateTime = new Date(this.props.response.created_at);
    formattedDate = months[dateTime.getMonth()] + " " + dateTime.getDate() + ", "
      + dateTime.getFullYear();  


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
                  <h2 className="response-items-create-date">{formattedDate}</h2>
                </div>
              </div>
              {deleteOwnComments}
            </nav>
            
          </Link>
          <h2 className="response-items-body">{this.props.response.body}</h2>
          <p>
            <i className='far fa-thumbs-up'></i>
          </p>
        </div>
      </div>
    );
  };
}

export default ResponseItems;