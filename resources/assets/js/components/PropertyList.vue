<template>
    <div>
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-4">Kalkulacija cijene smještaja</h1>
                <p class="lead">Turistička agencija nudi gostima smještaj u velikom broju smještajnih objekata. Osim osnovne cijene, cjenici turističkog
                    smještaja obično sadrže popuste i doplate, a u izračunu konačnog iznosa potrebno je obratiti
                    pozornost i na druge stavke, kao što je npr. boravišna taksa.</p>
            </div>
        </div>
        <h2>Odaberite objekt:</h2>
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-4 mb-4" v-for="property in properties">

                <div class="card text-center">
                    <div class="card-header">
                        <h5>{{property.destination}}</h5>
                    </div>
                    <router-link :to="'/' + property.id" exact>
                    <img class="card-img-top" :src="'https://loremflickr.com/320/240/sea?lock=' +property.id"
                         :alt="property.name">
                    <div class="card-body">
                        <h5 class="card-title">{{property.name}} </h5>
                    </div>
                    </router-link>
                </div>

            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "PropertyList",
        props: ["properties"],
        data: function () {
            return {}
        },
        mounted() {

        }
    }
</script>
