export const followUser = (id) => {
  return $.ajax({
    method: 'POST',
    url: `/api/users/${id}/follows`
  })
};

export const unfollowUser = (id) => {
  return $.ajax({
    method: 'DELETE',
    url: `/api/users/${id}/follows`
  })
};