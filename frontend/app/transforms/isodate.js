import DS from 'ember-data';

export default DS.Transform.extend({
  deserialize: function (serialized) {
    if (serialized) {
      // Keep in ISO format instead of doing #toDate, because of http://stackoverflow.com/a/23376374
      // See helpers/formatted-date.js to see how conversions to different date formats is done
      return moment(serialized).toISOString();
    }
    return serialized;
  },

  serialize: function (deserialized) {
    if (deserialized) {
      return moment(deserialized).toISOString();
    }
    return deserialized;
  }
});
