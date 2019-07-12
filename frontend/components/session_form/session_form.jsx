import React from 'react';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemoUser = this.handleDemoUser.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(this.props.closeModal);
  }

  handleDemoUser(event) {
    event.preventDefault();
    this.props.processForm({
      username: "Guest User",
      password: "password"
    }).then(this.props.closeModal);
  }
    
  update(field) {
    return event => this.setState({
      [field]: event.currentTarget.value
    });
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map( (error, idx) => (
          <li key={`error-${idx}`}>{error}</li>
        ))}
      </ul>
    )
  }

  componentWillUnmount() {
    this.props.clearErrors();
  }

  render() {
    return (
      <div className="form-div">
        <form className='signup-form' onSubmit={this.handleSubmit}>
          <div className="form-title">
            {this.props.formType === 'Sign up'
              ? <h1 className="signup-title">Join Meteor.</h1>
              : <h1 className="signup-title">Welcome back.</h1>
            }
          </div>
          <p className="signup-description">{this.props.formType === 'Sign up' ? 'Create an account to receive great stories in your inbox, personalize your homepage, and follow authors and topics that you love.'
            : 'Sign in to get personalized story recommendations, follow authors and topics you love, and interact with stories.'}</p>
          <br />
          <div onClick={this.props.closeModal} className="close-x">&#10006;</div>
          {this.renderErrors()}
          <label>
              <input
                  className="input-forms"
                  type="text"
                  value={this.state.username}
                  onChange={this.update('username')}
                  placeholder='Username'
              />
          </label>
          <br />
          <label>
            <input
              className="input-forms"
              type="password"
              value={this.state.password}
              onChange={this.update('password')}
              placeholder='Password'
            />
          </label>
          <br/>
          <input className="submit-button" type="submit" value={this.props.formType} />
          <div className="switch-container">
            {this.props.formType === 'Sign up'
              ? <p className="switch-account-access">Already have an account? {this.props.otherForm}</p>
              : <p className="switch-account-access">No account? <button onClick={this.handleDemoUser}>Demo login</button> </p>}
          </div>
          <p>To make Meteor work, we log user data and share it with service providers. Click “{this.props.formType}” above to accept Meteor’s <a>Terms of Service</a> & <a>Privacy Policy.</a></p>
        </form>
      </div> 
    );
  }
}

export default SessionForm;