<template>
<div id="id01" class="w3-modal"  :style="{display: openRequest}">
    <div class="w3-modal-content w3-animate-zoom" style="width: 50%; margin: auto">
      <header class="w3-container w3-white"> 
        <span  class="w3-button w3-display-topright" @click="close">&times;</span>
        <h2>Update {{ list.name }}</h2><hr>
      </header>
      <div class="w3-container">
        <v-card flat>
          <v-form @submit.prevent ref="form">
            <v-container grid-list-xl fluid>
              <v-layout wrap>
                <v-flex xs12 sm6>
                  <v-text-field
                    color="purple darken-2"
                    label="Name"
                    required
                    v-model="list.name"
                    :rules="rules.name"
                  ></v-text-field>
                </v-flex>
              </v-layout>
            </v-container>
            <v-card-actions>
              <v-btn flat @click="resetForm">Cancel</v-btn>
              <v-spacer></v-spacer>
              <v-btn
                flat
                color="primary"
                type="submit"
                @click="update"
                :disabled="!formIsValid"
              >Update</v-btn>
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
    props:['openRequest'],
	data() {
		const defaultForm = Object.freeze({
	        name: '',
	    })

		return{
      group: {},
			list: {},
			valid: false,
		    
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
	        this.list = Object.assign({}, this.defaultForm)
	        this.$refs.list.reset()
	        this.close()
	    },
		// open() {
		// 	this.openRequest = 'block'
		// },
		/*open() {
			this.$emit('openRequest')
		},*/
		close() {
			this.$emit('closeRequest')
		},
		update() {
			axios.put(`/group/${this.list.id}`, this.$data.list)
			.then((response) => {
				this.close()
		        // console.log(response);    			
          this.$emit('alertRequest')
		        // this.$parent.group.push(response.data)
			})
      .catch((error) => this.errors = error.response.data.errors)
		}
	},
	computed: {
      formIsValid () {
        return (
          this.list.name 
        )
      }
    },
}
</script>