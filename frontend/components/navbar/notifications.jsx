import React from 'react';

class Notifications extends React.Component {
  render() {
    debugger
    let notifications = [];
    Object.values(this.props.followers).forEach(follower => {
      notifications.push(follower);
    })
    notifications.forEach(notification => {
      return (
        <div>
          {notification.username}
        </div>
      )
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