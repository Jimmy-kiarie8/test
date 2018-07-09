<template>
<div id="id01" class="w3-modal" :style="{display: openRequest}">
    <div class="w3-modal-content w3-animate-zoom" style="width: 50%; margin: auto">
      <header class="w3-container w3-white"> 
        <span @click="close" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>{{list.name}}</h2>
      </header>
      <div class="w3-container">
        <v-form @submit.prevent ref="form">
          <v-checkbox :label="list.name" :value="list.id" v-model="form.user_id" selected></v-checkbox>
          <v-expansion-panel popout>
            <v-expansion-panel-content>
              <div slot="header">Choose select a role</div>
              <v-card v-for="(item,key) in groups" :key="item.id" class="col-md-4">
                <v-card-text>
                  <v-checkbox :label="item.name" :value="item.id" v-model="form.role_id"></v-checkbox>
                </v-card-text>
              </v-card>
            </v-expansion-panel-content>
          </v-expansion-panel>

          <v-card-actions>
            <v-btn flat @click="resetForm">Cancel</v-btn>
            <v-spacer></v-spacer>
            <v-btn
              flat
              color="primary"
              type="submit"
              @click="update"
              :disabled="!formIsValid"
            >Submit</v-btn>
          </v-card-actions>
        </v-form>
      </div>
    </div>
</div>
</template>

<script>
export default {
    props:['openRequest'],
    data() {
      const defaultForm = Object.freeze({
        role_id: null,
        user_id: null,
      })
    	return{
        list: '',
        groups: {},
    		form: Object.assign({}, defaultForm),
        // disp: 'block',
    	}
    },
	methods: {
    resetForm () {
          this.form = Object.assign({}, this.defaultForm)
          // this.$refs.form.reset()
          this.close()
        },
		close() {
			this.$emit('closeRequest')
		},
    update() {
      axios.patch(`/role/${this.list.id}`, this.$data.form)
      .then((response) => {
        this.resetForm()
            console.log(response);          
            this.$emit('alertRequest')
            // e1 = 2
            // this.$parent.attachments.sub_cat.push(response.data)
            // this.attachments.splice(key, 1)
      })
      .catch((error) => this.errors = error.response.data.errors)
    }
	},
  computed: {
      formIsValid () {
        return (
          this.form.role_id &&
          this.form.user_id
        )
      }
    },
   mounted() {
    axios.post('/getgroup')
    .then((response) => this.groups = this.temp = response.data)
      .catch((error) => this.errors = error.response.data.errors)
  },
}
</script>
<style scoped>


</style>