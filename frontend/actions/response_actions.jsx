import * as APIResponseUtil from '../util/response_util';

export const RECEIVE_RESPONSE = 'RECEIVE_RESPONSE';

const receiveResponse = (response) => ({
  type: RECEIVE_RESPONSE,
  response: response
});

export const createResponse = (response) => {
  return dispatch => {
    return APIResponseUtil.createResponse(response)
      .then(response => dispatch(receiveResponse(response)))
  };
};