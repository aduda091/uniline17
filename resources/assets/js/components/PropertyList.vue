<template>
    <div>
        <h2>Odaberite objekt:</h2>
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-4 mb-4" v-for="property in properties">
                <div class="card text-center">
                    <div class="card-header">
                        <h5>{{property.destination}}</h5>
                    </div>
                    <img class="card-img-top" :src="'https://loremflickr.com/320/240/sea?lock=' +property.id"
                         :alt="property.name">
                    <div class="card-body">
                        <h5 class="card-title">{{property.name}} </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        props: ["properties"],
        data: function () {
            return {}
        },
        mounted() {

        }
    }
</script>
