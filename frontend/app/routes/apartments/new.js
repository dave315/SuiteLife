import Ember from 'ember';

export default Ember.Route.extend({
  model(){
    return this.store.createRecord('apartment');
  },
  actions: {
    save(apartment) {
      var _this = this;
      apartment.save().then(function(apartment) {
        _this.transitionTo('apartments.show', apartment);
      });
    },
    cancel: function() {
      this.transitionTo('apartments');
      return false;
    }
  }
});
