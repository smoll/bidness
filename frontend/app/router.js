import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('contact', { path: '/contacts/:contact_id' });
  this.route('new-contact', { path: '/contacts/new' });
  this.route('contacts');
});

export default Router;
