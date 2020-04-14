export const fetchAllFollowers = (id) => {
  return $.ajax({
    method: 'GET',
    url: `/api/users/${id}/follows`
  });
};

// Should have a fetch specific user's followers.
// Route requires follow_id, but not used. Given random follow id.
export const fetchUserFollowers = (id) => {
  return $.ajax({
    method: 'GET',
    url: `/api/users/${id}/follows/123`
  });
};

// export const followUser = (user_id, id) => {
//   return $.ajax({
//     method: 'POST',
//     url: `/api/users/${id}/follows`,
//     data: user_id
//   })
// };

export const followUser = (id) => {
  return $.ajax({
    method: 'POST',
    url: `/api/users/${id}/follows`,
    data: {'follow[user_id]': id}
  });
};

export const unfollowUser = (id, followId) => {
  return $.ajax({
    method: 'DELETE',
    url: `/api/users/${id}/follows/${followId}`
  });
};