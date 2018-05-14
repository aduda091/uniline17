<template>
    <form action="#" @submit.prevent="calculate">
        <h4>Izračun cijene smještaja</h4>
        <div class="form-group">
            <label>Od<input type="date" v-model="dateFrom" class="form-control"></label>
            <label>do<input type="date" v-model="dateTo" class="form-control"></label>
        </div>
        <div class="form-row">
            <div class="form-group col-sm-12 col-md-4 col-lg-4">
                <label for="adults"> Odraslih osoba: </label><input type="number" min="1" class="form-control"
                                                                    id="adults" v-model="adults">
            </div>
            <div class="form-group col-sm-12 col-md-4 col-lg-4">
                <label for="teens"> Djece 12-17 godina: </label><input type="number" min="0" class="form-control"
                                                                       id="teens" v-model="teens">
            </div>
            <div class="form-group col-sm-12 col-md-4 col-lg-4">
                <label for="children"> Djece mlađe od 12 godina: </label><input type="number" min="0"
                                                                                class="form-control" id="children"
                                                                                v-model="children">
            </div>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Izračunaj</button>
        </div>
    </form>
</template>

<script>
    export default {
        name: "CalculationForm",
        props: ["propertyId", "unit"],
        data() {
            return {
                dateFrom: "2018-08-24",//todo: debugging reasons
                dateTo: "2018-08-31",
                adults: 2,
                teens: 1,
                children: 1
            }
        },
        mounted() {
            // set min/max values for date pickers
            /*this.dateFrom = this.unit.base_prices[0].from;
            this.dateTo = this.unit.base_prices[this.unit.base_prices.length - 1].to;*/
        },
        computed: {
            totalPersons() {
                return parseInt(this.adults) + parseInt(this.teens) + parseInt(this.children);
            },
            numPersons() {
                let min = this.unit.base_prices[0].nr_persons;
                for (let base in this.unit.base_prices) {
                    if (base.nr_persons < min) min = base.nr_persons;
                }
                return min;
            },
            minNights() {
                let min = this.unit.base_prices[0].min_nights;
                for (let base in this.unit.min_nights) {
                    if (base.min_nights < min) min = base.min_nights;
                }
                return min;
            }
        },
        methods: {
            calculate() {
                if (this.totalPersons < this.numPersons) console.log("Nedovoljno ljudi");
                else {
                    let data = {
                        propertyId: parseInt(this.propertyId),
                        unitId: this.unit.id,
                        dateFrom: this.dateFrom,
                        dateTo: this.dateTo,
                        adults: this.adults,
                        teens: this.teens,
                        children: this.children
                    };
                    axios.post("calculate", data).then(response => {
                        console.log(response.data);
                        //todo: display received data (modal window)
                    }).catch(err => {
                        console.log(err);
                    })
                }

            }
        }
    }
</script>

<style scoped>

</style>