export const compare = (a, b) => {
  let comparison = 0;
  let responseLength1 = a['count'];
  let responseLength2 = b['count'];

  // Longest response length stories in the front
  if (responseLength1 < responseLength2) {
    comparison = 1;
  }
  else if (responseLength1 > responseLength2) {
    comparison = -1;
  }
  return comparison;
}