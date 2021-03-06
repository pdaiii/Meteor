export const fetchAllResponses = (story_id) => {
  return $.ajax({
    method: 'GET',
    url: `/api/stories/${story_id}/responses`
  });
};

export const createResponse = (response) => {
  return $.ajax({
    method: 'POST',
    url: `/api/stories/${response.story_id}/responses`,
    data: {response}
  });
};

export const updateResponseClaps = (formData, response) => {
  return $.ajax({
    method: 'PATCH',
    url: `/api/stories/${response.story_id}/responses/${response.id}/claps`,
    data: formData,
    contentType: false,
    processData: false
  });
};

export const deleteResponse = (id) => {
  return $.ajax({
    method: 'DELETE',
    url: `/api/responses/${id}`
  });
};