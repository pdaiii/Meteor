import React from 'react';
import { Link } from 'react-router-dom';
import { monthDay } from '../../util/month_day_util';
import { timeToRead } from '../../util/time_to_read_util';

class ResponseItems extends React.Component {
  constructor(props) {
    super(props);
    this.updateClapCounter = this.updateClapCounter.bind(this);
  }

  handleDelete(){
    return event => {
      event.preventDefault();
      this.props.deleteResponse(this.props.response.id);
    }
  }

  // Response claps
  updateClapCounter(event) {
    const formData = new FormData();
    formData.append('response[count]', this.props.response.count + 1);
    this.props.updateResponseClaps(formData, this.props.response);
  }

  render() {
    let formattedDate = monthDay(this.props.response.created_at);
    // Delete own comments. Display delete icon when viewing own comments.
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
          
          {/* <p>
            <button><i className='far fa-thumbs-up'></i></button>
          </p> */}

          {/* From story claps. Need to add count to responses. */}
          <div className="response-clap-icon">
            <button className="response-clap" onClick={this.updateClapCounter}><i className='far fa-thumbs-up'></i></button>
            <p className="clap-counter">{this.props.response.count} likes</p>
          </div>

        </div>
      </div>
    );
  };
}

export default ResponseItems;