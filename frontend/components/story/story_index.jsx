import React from 'react';
import StoryIndexHero from './story_index_hero';
import StoryIndexItems from './story_index_items';
import PopularStories from './popular_stories';
// import { compare } from '../../util/compare_responses_util';
import { compare } from '../../util/compare_likes_util';

class StoryIndex extends React.Component {
  componentDidMount() {
    this.props.fetchAllStories();
  }

  render() {
    let stories = Object.values(this.props.stories);
    let storyIndexHero;
    let heroStories;
    let storyIndexItems;
    let popularStories;
    let mostPopularStories;
    // Navigating from a show page. Or refreshing the splash page.
    if(stories.length < 2) {
      return null;
    }else {

      // Implement curated index hero
      // Find the users that are following the current user. Go through the stories that those
      // users have created.
      // let followedUsers = [];
      // Object.values(this.props.follows).forEach(follow => {
      //   if(follow.followee.id === this.props.match.params.userId) {
      //     followedUsers.push(follow);
      //   }
      // })
      // Object.values(this.props.stories).forEach(follow)



      heroStories = stories.reverse().slice(0, 5);
      storyIndexHero = <StoryIndexHero stories={heroStories} />
      storyIndexItems = stories.reverse().map(story => {
        return (
          <StoryIndexItems
            key={story.id}
            story={story}
          />
        )
      });
      let sortedStories = stories.sort(compare);
      popularStories = sortedStories.slice(0,4);
      mostPopularStories = <PopularStories stories={popularStories} />
    }

    return(
      <div className="story-index-container">
        {storyIndexHero}
        <hr/>
        <div className="story-index-main">
          <div className="story-index">
            {storyIndexItems}
          </div>
          {mostPopularStories}
        </div>
        {/* <hr/>
        <footer className="main-footer">
          <a href="">Help</a>
          <a href="">Status</a>
          <a href="">Writers</a>
          <a href="">Blog</a>
          <a href="">Careers</a>
          <a href="">Privacy</a>
          <a href="">Terms</a>
          <a href="">About</a>
        </footer> */}
      </div>
    )
  };
};

export default StoryIndex;