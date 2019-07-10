export const createResponse = (response) => {
  return $.ajax({
    method: 'POST',
    url: `api/stories/${response.story_id}/responses`,
    data: {response}
  });
}