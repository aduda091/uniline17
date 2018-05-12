<template>
    <div>
        <h1 class="mb-4">{{ name }} - {{ destination }}</h1>
        <h3 class="mb-5">Smještajne jedinice:</h3>
        <div class="row center">
            <div class="col-sm-12 col-md-6 col-lg-3 mb-4" v-for="unit in units">
                <div class="card text-center shadow" @click="showUnitDetails(unit)" :class="[unit.id === selectedUnit.id ? 'border-primary' : '']">

                        <h5 class="card-header">{{ unit.type | translate }} </h5>

                    <div class="card-body">
                        <h5 class="card-title">{{ unit.name }} </h5>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-12">
            <UnitDetails :unit="selectedUnit"></UnitDetails>
        </div>

        <div class="col-sm-12">
            <CalculationForm v-if="loadedUnit" :propertyId="id" :unit="selectedUnit"></CalculationForm>
        </div>
    </div>


</template>

<script>
    import UnitDetails from "./UnitDetails";
    import CalculationForm from "./CalculationForm";

    export default {
        name: "PropertyDetails",
        components: {CalculationForm, UnitDetails},
        data: function () {
            return {
                id: null,
                name: "",
                destination: "",
                tourist_tax: "",
                units: [],
                discounts: [],
                selectedUnit: {},
                loadedUnit: false
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
                this.loadedUnit = true;
            }
        },
        filters: {
            capitalize: function (value) {
                if (!value) return '';
                value = value.toString();
                return value.charAt(0).toUpperCase() + value.slice(1)
            },
            translate(eng) {
                switch (eng.toLowerCase()) {
                    case "apartment":
                        return "Apartman";
                    case "room":
                        return "Soba";
                    case "house":
                        return "Kuća";
                    default:
                        return eng;
                }
            }
        }
    }
</script>

<style scoped>
    .card {
        cursor: pointer;
    }
</style>