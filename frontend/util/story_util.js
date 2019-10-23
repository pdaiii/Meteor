export const fetchAllStories = () => {
  return $.ajax ({
    method: 'GET',
    url: '/api/stories'
  })
};

export const fetchStory = (id) => {
  return $.ajax ({
    method: 'GET',
    url: `/api/stories/${id}`
  })
};

// Uploading image files to the backend server.
export const createStory = (story) => {
  return $.ajax({
    method: 'POST',
    url: `/api/stories`,
    data: story,
    contentType: false,
    processData: false
  })
};

// Updating story details to the backend server. Handles image files.
export const updateStory = (story, story_id) => {
  return $.ajax ({
    method: 'PATCH',
    url: `/api/stories/${story_id}`,
    data: story,
    contentType: false,
    processData: false
  })
};

export const updateStoryLikes = (story, story_id) => {
  return $.ajax ({
    method: 'PATCH',
    url: `/api/stories/${story_id}/claps`,
    data: story,
    contentType: false,
    processData: false
  })
};

export const deleteStory = (id) => {
  return $.ajax ({
    method: 'DELETE',
    url: `/api/stories/${id}`
  })
};

// export const createStory = (story) => {
//   return $.ajax ({
//     method: 'POST',
//     url: `/api/stories`,
//     data: {story}
//   })
// };

// export const updateStory = (story) => {
//   return $.ajax ({
//     method: 'PATCH',
//     url: `/api/stories/${story.id}`,
//     data: {story}
//   })
// };