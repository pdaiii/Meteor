// export const updateUser = (id) => {
//   return $.ajax({
//     method: 'PATCH',
//     url: `/api/user_profile/${id}`,
//   })
// };

export const followUser = (id) => {
  return $.ajax({
    method: 'PATCH',
    url: `/api/user_profile/${id}`
  })
};

export const unfollowUser = (id) => {
  return $.ajax({
    method: 'DELETE',
    url: `/api/user_profile/${id}`
  })
}