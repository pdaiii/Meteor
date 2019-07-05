import * as SessionAPIUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
export const CLEAR_SESSION_ERRORS = 'CLEAR_SESSION_ERRORS';


// Action Creators
const receiveCurrentUser = (user) => {
    return ({
        type: RECEIVE_CURRENT_USER,
        user: user
    })
};

const logoutCurrentUser = () => ({
    type: LOGOUT_CURRENT_USER
});

const receiveErrors = (errors) => ({
    type: RECEIVE_SESSION_ERRORS,
    errors: errors
});

export const clearErrors = () => ({
    type: CLEAR_SESSION_ERRORS,
    errors: []
})

// Thunk Action Creators
export const login = (user) => {
    return dispatch => {
        return SessionAPIUtil.login(user)
            .then(
                user => (dispatch(receiveCurrentUser(user))),
                err => (dispatch(receiveErrors(err.responseJSON))))
    };
};

export const logout = () => {
    return dispatch => {
        return SessionAPIUtil.logout().then(() => (
            dispatch(logoutCurrentUser())
        ), (err) => (
            dispatch(receiveErrors(err.responseJSON))
        ))
    };
};

export const signup = (user) => {
    return dispatch => {
        return SessionAPIUtil.signup(user).then(user => (
            dispatch(receiveCurrentUser(user))
        ), (err) => (
            dispatch(receiveErrors(err.responseJSON))
        ))
    };
};