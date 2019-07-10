import React from 'react';
import { Route, Link, Switch, Redirect } from 'react-router-dom';
import Modal from './modal';
import { AuthRoute } from '../util/route_util';
import NavBarContainer from './navbar/navbar_container';
import CreateStoryFormContainer from './story/create_story_form_container';
import StoryShowContainer from './story/story_show_container';
import EditStoryFormContainer from './story/edit_story_form_container';
import UserShowContainer from './user/user_show_container';
import StoryIndexContainer from './story/story_index_container';

const App = () => (
  <div>
    <header className="navBar">
      <Link to='/'><h1 className="logo">Meteor</h1></Link>
      <NavBarContainer />
    </header>
    <Modal />

    <Switch>
      <AuthRoute path="/stories/new" component={CreateStoryFormContainer} />
      <AuthRoute path="/stories/:storyId/edit" component={EditStoryFormContainer} />
      <Route path="/stories/:storyId" component={StoryShowContainer}/>
      <Route path="/users/:userId" component={UserShowContainer} />
      <Route path="/" component={StoryIndexContainer}/>
      <Redirect to="/" />
    </Switch>
  </div>
);

export default App;