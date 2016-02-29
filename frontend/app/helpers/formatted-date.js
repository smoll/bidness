// See .jshintrc, needed in order to get JSHint to shut up about moment global

import Ember from 'ember';

export function formattedDate(params) {
  let date = params[0],
      outFormat = params[1];
  return moment(date).format(outFormat);
}

export default Ember.Helper.helper(formattedDate);
