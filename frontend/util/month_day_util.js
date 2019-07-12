export const monthDay = (creationTime) => {
  const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
  let dateTime;
  let formattedDate;
  dateTime = new Date(creationTime);
  formattedDate = months[dateTime.getMonth()] + " " + dateTime.getDate(); 
  return formattedDate;
};