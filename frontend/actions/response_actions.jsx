import * as APIResponseUtil from '../util/response_util';

export const RECEIVE_ALL_RESPONSES = 'RECEIVE_ALL_RESPONSES';
export const RECEIVE_RESPONSE = 'RECEIVE_RESPONSE';
export const DESTROY_RESPONSE = 'DESTROY_RESPONSE';

const receiveAllResponses = (responses) => {
  return ({
    type: RECEIVE_ALL_RESPONSES,
    responses: responses
  })
};

const receiveResponse = (response) => ({
  type: RECEIVE_RESPONSE,
  response: response
});

const destroyResponse = (id) => ({
  type: DESTROY_RESPONSE,
  id: id
})

export const fetchAllResponses = (story_id) => {
  return dispatch => {
    return APIResponseUtil.fetchAllResponses(story_id)
      .then(responses => dispatch(receiveAllResponses(responses)))
  };
};

export const createResponse = (response) => {
  return dispatch => {
    return APIResponseUtil.createResponse(response)
      .then(response => dispatch(receiveResponse(response)))
  };
};

export const deleteResponse = (id) => {
  return dispatch => {
    return APIResponseUtil.deleteResponse(id)
      .then(() => dispatch(destroyResponse(id)))
  };
};