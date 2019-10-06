import React from 'react';

class Notifications extends React.Component {
  componentWillMount() {
    // fetchUserNotifications
  }

  render() {
    let notifications = [];
    Object.values(this.props.notifications).forEach( notification => {
      notifications.push(notification);
    })

    return (
      <div>
        <div className="notifications-list">
          {notifications}
        </div>
      </div>
    )
  }
  
}

export default Notifications;