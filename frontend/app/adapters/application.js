import ActiveModelAdapter from 'active-model-adapter';

export default ActiveModelAdapter.extend({
	namespace: 'api/v1',
	host: 'http://localhost:3000' // TODO: use env var to control this
});
