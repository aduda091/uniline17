<template>
    <div class="">
        <h2>Odaberite objekt:</h2>
        <ul class="list-group">
            <li v-for="property in properties" class="list-group-item">{{property.name}}</li>
        </ul>
    </div>
</template>

<script>
    export default {
        data: function() {
            return {
                properties: []
            }
        },
        mounted() {
            axios.get("properties").then(response =>   {
                console.log(response.data);
                this.properties = response.data;
            });
        }
    }
</script>
