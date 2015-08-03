import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('apartments', function(){
  });

  this.route('apartments', function() {
    this.route('new');
    this.route('show', { path: ':apartment_id' });
    this.route('edit', { path: ':apartment_id/edit' });
  });
});

export default Router;
