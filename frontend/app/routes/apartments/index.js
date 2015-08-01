import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.findAll('apartment');
  },
  actions: {
    delete(apartment) {
      apartment.destroyRecord();
      return false;
    }
  }
});
