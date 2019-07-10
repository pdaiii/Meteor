import React from 'react';

class Response extends React.Component {
  constructor(props){
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(event) {
    debugger
    event.preventDefault();

  }

  render() {
    debugger
    return (
      <div>
        <div>
          <form onSubmit={this.handleSubmit}>
            <input className="response-form-input" type="text" />
            <button><input type="submit" value="Publish"/></button>
          </form>
        </div>
      </div>
    );
  }
}

export default Response;