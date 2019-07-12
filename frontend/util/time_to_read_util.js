export const timeToRead = (text) => {
  let words = 0;
  let timeInSeconds, timeInMinutes;
  let wordsPerSecond = 3.5;
  for (let i = 0; i < text.length; i++)
    if (text[i] === " ") { // if a space is found in str
      words += 1; // add 1 to total so far
    }
  words += 1; // add 1 to totalsoFar to account for extra space since 1 space = 2 words

  timeInSeconds = (words / wordsPerSecond);
  timeInMinutes = Math.floor(timeInSeconds / 60);
  if (timeInMinutes < 1) return 1;
  return timeInMinutes;
};