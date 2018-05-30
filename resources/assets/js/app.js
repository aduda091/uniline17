require('./bootstrap');
/*
window.Vue = require('vue');
window.VueRouter = require('vue-router');*/

import Vue from 'vue'
import VueRouter from 'vue-router';
import PropertyList from './components/PropertyList';
import PropertyDetails from './components/PropertyDetails';
import CalculationResult from './components/CalculationResult';

//axios.defaults.baseURL = '/uniline17/public/api/';
axios.defaults.baseURL = '/api/';

Vue.component('property-list', PropertyList);

Vue.component('property-details', PropertyDetails);


const routes = [
    { path: '/', component: PropertyList },
    { path: '/:id', component: PropertyDetails }
];

const router = new VueRouter({
    routes
});

Vue.use(VueRouter);
const app = new Vue({
    el: '#app',
    router,
    data: function () {
        return {
            searchTerm: "",
            properties: []
        }
    },
    created() {
        axios.get("properties").then(response => {
            this.properties = response.data;
        });
    },
    computed: {
        foundProperties() {
            //search by property name or destination
            let term = this.searchTerm;
            let allProperties = this.properties;
            if (!term) return allProperties;
            term = term.trim().toLowerCase();

            return allProperties.filter(property => {
                let found = property.name.toLowerCase().indexOf(term) !== -1;
                found |= property.destination.toLowerCase().indexOf(term) !== -1;
                if (found) return property;
            });

        }
    }
});
