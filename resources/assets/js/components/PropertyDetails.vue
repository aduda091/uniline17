<template>
    <div>
        <h1 class="mb-4">{{ name }} - {{ destination }}</h1>
        <h3 class="mb-5">Smještajne jedinice:</h3>
        <div class="row">
            <div class="col-md-4 col-sm-12 mb-4">
                <ul class="list-group">
                    <li @click="showUnitDetails(unit)" class="list-group-item list-group-item-action" v-for="unit in units">{{ unit.type | capitalize }} {{ unit.name }}</li>
                </ul>
            </div>

            <div class="col-md-8 col-sm-12">
                <div class="tab-pane">
                    <UnitDetails :unit="selectedUnit"></UnitDetails>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import UnitDetails from "./UnitDetails";
    export default {
        name: "PropertyDetails",
        components: {UnitDetails},
        data: function () {
            return {
                id: null,
                name: "",
                destination: "",
                tourist_tax: "",
                units: [],
                discounts: [],
                selectedUnit: {}
            }
        },
        mounted() {
            this.getDetails(this.$route.params.id);
        },
        methods: {
            getDetails(id) {
                axios.get("properties/" + id).then(response => {
                    let property = response.data;
                    this.id = id;
                    this.name = property.name;
                    this.destination = property.destination;
                    this.tourist_tax = property.tourist_tax;
                    this.units = property.units;
                    this.discounts = property.discounts;

                    this.showUnitDetails(this.units[0]);
                })
            },
            showUnitDetails(unit) {
                this.selectedUnit = unit;
            }
        },
        filters: {
            capitalize: function (value) {
                if (!value) return '';
                value = value.toString();
                return value.charAt(0).toUpperCase() + value.slice(1)
            }
        }
    }
</script>

<style scoped>

</style>