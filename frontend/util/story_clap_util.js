export const fetchStoryClaps = (story_id) => {
  return $.ajax({
    method: 'GET',
    url: `/api/stories/${story_id}/story_claps`
  })
};

// Illegal invocation
export const createStoryClap = (story_clap, story_id) => {
  debugger
  return $.ajax({
    method: 'POST',
    url: `/api/stories/${story_id}/story_claps`,
    data: story_clap,
    // converts to string
    processData: false,
    contentType: false
  })
};

export const destroyStoryClap = (story_id, id) => {
  return $.ajax({
    method: 'DELETE',
    url: `/api/stories/${story_id}/story_claps/${id}`
  })
};