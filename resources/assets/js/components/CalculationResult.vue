<template>
    <div class="modal fade in" :class="[showModal ? 'show' : '']">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Rezultati upita</h4>
                    <button type="button" class="close" @click="$emit('hide-modal')">&times;</button>
                </div>

                <div class="modal-body">
                    <p>Osnovna cijena smještaja: {{baseCost}}€</p>
                    <p v-if="discountPercent">Popust: {{discountPercent}}% ({{discountType}})</p>
                    <p>Boravišna pristojba: {{touristTaxAmount}}€ ({{touristTaxType|taxType}})</p>
                    <p>Ukupan iznos: {{totalCost}}€</p>
                    <p>Iznos koji se plaća agenciji: {{agencyCost}}€</p>
                    <p v-if="spotCost">Iznos koji se plaća na licu mjesta: {{spotCost}}€</p>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" @click="$emit('hide-modal')">Zatvori</button>
                </div>

            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "CalculationResult",
        props: ["result", "showModal"],
        data() {
            return {
                baseCost: "",
                discountType: "",
                discountPercent: "",
                touristTaxAmount: "",
                touristTaxType: "",
                totalCost: "",
                agencyCost: "",
                spotCost: ""
            }
        },
        beforeUpdate(){
            this.baseCost = this.result.baseCost;
            this.discountType = this.result.discount.type;
            this.discountPercent = this.result.discount.percent;
            this.touristTaxAmount =this.result.touristTax.amount;
            this.touristTaxType =this.result.touristTax.type;
            this.totalCost =this.result.totalCost;
            this.agencyCost =this.result.agencyCost;
            this.spotCost =this.result.spotCost;
        },
        filters: {
            taxType(val) {
                switch (val.toLowerCase()) {
                    case "included":
                        return "uključena u cijenu smještaja";
                    case "not-included":
                        return "nije uključena u cijenu smještaja";
                    case "on-the-spot":
                        return "plaća se na licu mjesta";
                    default:
                        return val;
                }
            }
        }

    }
</script>

<style scoped>
    .show {
        display: block;
    }
</style>