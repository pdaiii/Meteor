export const fetchAllStories = () => {
  debugger
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

// export const createStory = (story) => {
//   return $.ajax ({
//     method: 'POST',
//     url: `/api/stories`,
//     data: {story}
//   })
// };

// Handle images
export const createStory = (story) => {
  debugger
  return $.ajax({
    method: 'POST',
    url: `/api/stories`,
    data: story,
    contentType: false,
    processData: false
  })
};

export const updateStory = (story) => {
  return $.ajax ({
    method: 'PATCH',
    url: `/api/stories/${story.id}`,
    data: {story}
  })
};

export const deleteStory = (id) => {
  return $.ajax ({
    method: 'DELETE',
    url: `/api/stories/${id}`
  })
};