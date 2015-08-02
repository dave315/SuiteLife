import Ember from 'ember';

export default Ember.Route.extend({

    actions: {
      save(apartment) {
        var _this = this;
        apartment.save().then(function(apartment) {
          _this.transitionTo('apartments.show', apartment);
        });
      },
      cancel(apartment) {
        this.transitionTo('apartments.show', apartment);
      }
    }
});
