import React from 'react';
import StoryIndexHero from './story_index_hero';
import StoryIndexItems from './story_index_items';
import PopularStories from './popular_stories';

class StoryIndex extends React.Component {
  componentDidMount() {
    this.props.fetchAllStories();
  }

  render() {
    let stories = Object.values(this.props.stories);
    let storyIndexHero;
    let heroStories;
    let storyIndexItems;
    let numberOfPosts;
    // Implement based on claps later.
    let popularStories;
    let mostPopularStories;
    // Navigating from a show page. Or refreshing the splash page.
    if(stories.length < 2) {
      return null;
    }else {
      numberOfPosts = stories.length;
      heroStories = stories.slice(0, 5);
      popularStories = stories.slice(-4);
      storyIndexHero = <StoryIndexHero stories={heroStories} />
      storyIndexItems = stories.slice(5).map(story => {
        return (
          <StoryIndexItems
            key={story.id}
            story={story}
          />
        )
      });
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