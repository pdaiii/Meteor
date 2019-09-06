export const signup = (user) => {
  return $.ajax({
    method: 'POST',
    url: '/api/users',
    data: {user}
  });
};

export const login = (user) => {
  return $.ajax({
    method: 'POST',
    url: '/api/sessions',
    data: {user}
  });
};

// Route looks for an id when logging out.
export const logout = () => {
  return $.ajax({
    method: 'DELETE',
    url: '/api/sessions/123'
  });
}