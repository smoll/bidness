import { formattedDate } from 'frontend/helpers/formatted-date';
import { module, test } from 'qunit';

module('Unit | Helper | formatted date');

test('returns the correct date and format', function(assert) {
  let result = formattedDate(['2014-04-23T09:54:51', 'ddd, DD MMM YYYY HH:mm:ss ZZ']),
      expected = 'Wed, 23 Apr 2014 09:54:51 -0400';

  assert.equal(result, expected);
});
