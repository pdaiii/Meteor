export const fetchAllFollowers = (id) => {
  return $.ajax({
    method: 'GET',
    url: `/api/users/${id}/follows`
  })
}

// Should have a fetch all followees as well.

// export const followUser = (user_id, id) => {
//   debugger
//   return $.ajax({
//     method: 'POST',
//     url: `/api/users/${id}/follows`,
//     data: user_id
//   })
// };

export const followUser = (id) => {
  // debugger
  return $.ajax({
    method: 'POST',
    url: `/api/users/${id}/follows`,
    data: {'follow[user_id]': id}
  })
}

export const unfollowUser = (id, followId) => {
  // debugger
  return $.ajax({
    method: 'DELETE',
    url: `/api/users/${id}/follows/${followId}`
  })
};