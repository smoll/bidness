import DS from 'ember-data';

export default DS.JSONAPIAdapter.extend({
	namespace: 'api/v1',
	host: 'http://localhost:3000' // TODO: use env var to control this
});
