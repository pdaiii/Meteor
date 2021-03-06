import React from 'react';
import { Route, Link, Switch, Redirect } from 'react-router-dom';
import Modal from './modal/modal';
import { AuthRoute, ProtectedRoute } from '../util/route_utils';
import NavBarContainer from './navbar/navbar_container';
import CreateStoryFormContainer from './story/create_story_form_container';
import StoryShowContainer from './story/story_show_container';
import EditStoryFormContainer from './story/edit_story_form_container';
import UserShowContainer from './user/user_show_container';
import StoryIndexContainer from './story/story_index_container';
import SearchBar from './navbar/search_bar';
import WelcomePage from './welcome_page';
import FollowerContainer from './follow/follower';
import FolloweeContainer from './follow/followee';

const App = () => {
  return(
    <div>
      <header className="navBar">
        <Link to='/index' style={{textDecoration: 'none'}}><h1 className="logo">Meteor</h1></Link>
        <NavBarContainer />
      </header>
      <Modal />
      <Switch>
        {/* <AuthRoute path="/stories/new" component={CreateStoryFormContainer} />
        <AuthRoute path="/stories/:storyId/edit" component={EditStoryFormContainer} />
        <AuthRoute path="/stories/:storyId" component={StoryShowContainer} />
        <AuthRoute path="/users/:userId" component={UserShowContainer} />
        <ProtectedRoute exact path="/" component={WelcomePage} />
        <AuthRoute exact path="/index" component={StoryIndexContainer} />
        <Route path="/search" component={SearchBar} />
        <Redirect to="/" component={WelcomePage} /> */}

        <ProtectedRoute path="/stories/new" component={CreateStoryFormContainer} />
        <ProtectedRoute path="/stories/:storyId/edit" component={EditStoryFormContainer} />
        <ProtectedRoute path="/stories/:storyId" component={StoryShowContainer} />
        <ProtectedRoute exact path="/users/:userId/followers" component={FollowerContainer} />
        <ProtectedRoute exact path="/users/:userId/followees" component={FolloweeContainer} />
        <ProtectedRoute path="/users/:userId" component={UserShowContainer} />
        <AuthRoute exact path="/" component={WelcomePage} />
        <ProtectedRoute exact path="/index" component={StoryIndexContainer} />
        <Route path="/search" component={SearchBar} />
        <Redirect to="/" component={WelcomePage} />

      </Switch>
    </div>
  )
};

export default App;