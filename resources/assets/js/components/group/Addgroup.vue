<template>
<div id="id01" class="w3-modal"  :style="{display: openAddRequest}">
    <div class="w3-modal-content w3-animate-zoom" style="width: 50%; margin: auto">
      <header class="w3-container w3-white"> 
        <span  class="w3-button w3-display-topright" @click="close">&times;</span>
        <h2>Add a group</h2><hr>
      </header>
      <div class="w3-container">
        <v-card flat>
      <!-- <v-snackbar
        v-model="snackbar"
        absolute
        top
        right
        color="success"
      >
        <span>Registration successful!</span>
        <v-icon dark>check_circle</v-icon>
      </v-snackbar> -->
          <v-form @submit.prevent ref="form">
            <v-container grid-list-xl fluid>
              <v-layout wrap>
                <v-flex xs12 sm12>
                  <v-text-field
                    color="purple darken-2"
                    label="Name"
                    required
                    v-model="form.name"
                    :rules="rules.name"
                  ></v-text-field>
                </v-flex>
                <small class="has-text-danger" v-if="errors.name">{{ errors.name[0] }}</small>
              </v-layout>
            </v-container>
            <v-card-actions>
              <v-btn flat @click="resetForm">Cancel</v-btn>
              <v-spacer></v-spacer>
              <v-btn
                flat
                color="primary"
                type="submit"
                @click="save"
              >Submit</v-btn>
            </v-card-actions>
          </v-form>
        </v-card>
      </div>
      <!-- <footer class="w3-container w3-cyan">
        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal" @click="close">Close</button>
        <button type="button" class="btn btn-outline">Save</button>
      </footer> -->
    </div>
  </div>
</template>

<script>
export default {
    props:['openAddRequest'],
	data() {
		const defaultForm = Object.freeze({
        name: '',
      })

		return{
      list: {},
      errors: {},
      group: {},
			disp: 'none',
			form: Object.assign({}, defaultForm),
	        rules: {
	          name: [val => (val || '').length > 0 || 'This field is required']
	        },
	        snackbar: false,
	        defaultForm
		}
	},
	methods: {
		resetForm () {
	        this.form = Object.assign({}, this.defaultForm)
	        this.$refs.form.reset()
	        this.close()
	      },
		close() {
			this.$emit('closeRequest')
		},
		save() {
			axios.post('/group', this.$data.form)
			.then((response) => {
				this.close()
		        console.log(response);    			
		        this.$parent.group.push(response.data)  
		        // this.list = {}
        this.$emit('alertRequest')
			})
      		.catch((error) => this.errors = error.response.data.errors)
		}
	},
	computed: {
      formIsValid () {
        return (
          this.form.name 
        )
      }
    },
}
</script>


<style>
.input-group__details:before {
    height: 2px !important;
    z-index: 0 !important;
    background: #ddbdff !important;
}
</style>