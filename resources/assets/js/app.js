require('./bootstrap');

window.Vue = require('vue');

axios.defaults.baseURL = '/uniline17/public/api/';

Vue.component('property-list', require('./components/PropertyList.vue'));

const app = new Vue({
    el: '#app',
    data: function () {
        return {
            searchTerm: "",
            properties: []
        }
    },
    created() {
        axios.get("properties").then(response =>   {
            console.log(response.data);
            this.properties = response.data;
        });
    },
    computed: {
        foundProperties() {
            //search by property name or destination
            let term = this.searchTerm;
            let allProperties = this.properties;
            if(!term) return allProperties;
            term = term.trim().toLowerCase();

            return allProperties.filter(property => {
                let found = property.name.toLowerCase().indexOf(term) !== -1;
                found |= property.destination.toLowerCase().indexOf(term) !== -1;
                if(found) return property;
            });

        }
    }
});
