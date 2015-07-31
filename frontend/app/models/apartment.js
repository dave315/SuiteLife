import DS from 'ember-data';

export default DS.Model.extend({
  address: DS.attr('string'),
  city: DS.attr('string'),
  state: DS.attr('string'),
  photoUrl: DS.attr('string'),
  listingUrl: DS.attr('string'),
  zip: DS.attr('number'),
  price: DS.attr('number'),
  available: DS.attr('boolean'),
  description: DS.attr('string')
});
