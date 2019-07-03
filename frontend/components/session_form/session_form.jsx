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
            <form onSubmit={this.handleSubmit}>
                Please {this.props.formType} or {this.props.navLink}
                <br/>
                {/* {this.renderErrors()} */}
                <label>
                    Username: 
                    <input 
                        type="text" 
                        value={this.state.username} 
                        onChange={this.update('username')}
                    />
                </label>
                <br/>
                <label>
                    Password: 
                    <input 
                        type="password" 
                        value={this.state.password} 
                        onChange={this.update('password')}
                    />
                </label>
                <br/>
                <input type="submit" value={this.props.formType}/>
            </form>
        );
    }
}

export default SessionForm;