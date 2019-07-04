import React from 'react';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: "",
            password: ""
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(event) {
        event.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user);
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

    render() {
        return (
            <div className="form-div">
                <form className='signup-form' onSubmit={this.handleSubmit}>
                    <h1 className="signup-title"><b>Join Meteor.</b></h1>
                    <p className="signup-description">Create an account to receive great stories in your inbox, personalize your homepage, and follow authors and topics that you love.</p>
                    <br />
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
                    <p className="already-have-account">Already have an account? {this.props.navLink}</p>
                    <p>To make Medium work, we log user data and share it with service providers. Click “Sign in” above to accept Medium’s <a>Terms of Service</a> & <a>Privacy Policy.</a></p>
                </form>
            </div> 
        );
    }
}

export default SessionForm;