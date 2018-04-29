<template>
    <div>
        <h4>{{unit.name}}</h4>
        <table class="table table-dark table-bordered table-responsive-md">
            <thead>
            <tr>
                <th>Dostupno od:</th>
                <th>Dostupno do:</th>
                <th>Minimalno noćenja:</th>
                <th>Broj osoba:</th>
                <th>Dani:</th>
                <th>Cijena:</th>
            </tr>
            </thead>
            <tr v-for="base in unit.base_prices">
                <td>{{base.from | toHrDate}}</td>
                <td>{{base.to | toHrDate}}</td>
                <td>{{base.min_nights}}</td>
                <td>{{base.nr_persons}}</td>
                <td>svi</td>
                <td>{{base.price}}</td>
            </tr>
        </table>
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