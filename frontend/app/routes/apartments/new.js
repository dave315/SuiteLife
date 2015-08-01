import Ember from 'ember';

export default Ember.Route.extend({
  model: function(){
    return this.store.createRecord('apartment');
  },
  actions: {
    save(apartment) {
      var _this = this;
      apartment.save().then(function(apartment) {
        _this.transitionTo('apartments.show', apartment);
      });
    },
    cancel() {
      this.transitionTo('apartments.index');
      return false;
    }
  }
});
