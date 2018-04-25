require('./bootstrap');

window.Vue = require('vue');

axios.defaults.baseURL = '/uniline17/public/api/';

Vue.component('property-list', require('./components/PropertyList.vue'));

const app = new Vue({
    el: '#app',
    data: function () {
        return {
            msg: "Vue"
        }
    }
});
