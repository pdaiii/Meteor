import React from 'react';

function Notifications(props) {
  return (
    <form>
      <button className="navbar-notifications"><i className="fas fa-bell"></i></button>
      {/* Need to track notifications per user */}
      <p className="notification-cnt"></p>
    </form>
  )
}

export default Notifications;