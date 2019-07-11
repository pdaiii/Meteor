export const fetchAllResponses = (story_id) => {
  return $.ajax({
    method: 'GET',
    url: `/api/stories/${story_id}/responses`
  })
}

export const createResponse = (response) => {
  return $.ajax({
    method: 'POST',
    url: `api/stories/${response.story_id}/responses`,
    data: {response}
  });
}