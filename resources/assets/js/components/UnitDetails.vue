<template>
    <div>
        <h4>{{unit.name}}</h4>
        <div v-for="base in unit.base_prices">
            <p>Dostupno od: {{base.from | toHrDate}} do {{base.to | toHrDate}}</p>

            <p>Minimalno noćenja: {{base.min_nights}}</p>
            <p>Minimalno osoba: {{base.nr_persons}}</p>
            <p>Dani: svi</p>
            <p>Cijena: {{base.price}}</p>
        </div>
    </div>
</template>

<script>
    export default {
        name: "UnitDetails",
        props: ['unit'],
        filters: {
            toHrDate(value) {
                return value.toString().split("-").reverse().join(".").concat(".");
            }
        }
    }
</script>

<style scoped>

</style>