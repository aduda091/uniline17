<template>
    <div class="">
        <h2>Odaberite objekt:</h2>
        <ul class="list-group">
            <li v-for="property in properties" class="list-group-item">{{property.name}} ({{property.destination}})</li>
        </ul>
    </div>
</template>

<script>
    export default {
        props: ["properties"],
        data: function() {
            return {

            }
        },
        mounted() {

        }
    }
</script>
