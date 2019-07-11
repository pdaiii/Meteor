import React from 'react';

class Response extends React.Component {
  constructor(props){
    super(props);
    this.state = this.props.response;
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    // this.props.fetchStory(this.props.story.id);
  }

  update(field) {
    return event => this.setState({
      [field]: event.currentTarget.value
    })
  }

  handleSubmit(event) {
    event.preventDefault();
    this.props.createResponse(this.state)
      .then(() => this.props.history.push(`/stories/${this.props.story.id}`));
    this.setState({
      body: ''
    })
  }

  render() {
    return (
      <div>
        <div className="response-form-container">
          <form onSubmit={this.handleSubmit}>
            <div className="response-form">
              <input className="response-form-input" type="text" value={this.state.body}
                placeholder="Write a response..." onChange={this.update('body')} />
              <input className="response-form-submit-btn" type="submit" value="Publish" />
            </div>
          </form>
        </div>
      </div>
    );
  }
}

export default Response;