import * as APIUserUtil from '../util/user_util';

export const RECEIVE_USER = 'RECEIVE_USER';

const receiveUser = (user) => ({
  type: RECEIVE_USER,
  user: user
});

export const fetchUser = (user) => {
  return dispatch => {
    return APIUserUtil.fetchUser(user)
      .then(user => dispatch(receiveUser(user)))   
  };
};