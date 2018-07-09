<template>
<div id="id01" class="w3-modal"  :style="{display: openRequest}">
    <div class="w3-modal-content w3-animate-zoom" style="width: 80%; margin: auto">
      <header class="w3-container w3-white"> 
        <span  class="w3-button w3-display-topright" @click="close">&times;</span>
        <h2>Send nontifications</h2>
      </header>
      <div class="w3-container">
         <v-card flat>
        <v-snackbar
          v-model="snackbar"
          absolute
          top
          right
          color="success"
        >
        </v-snackbar>
        <v-form @submit.prevent ref="form">
          <v-container grid-list-xl fluid>
            <v-layout wrap>
              <v-flex xs12>
                <v-text-field
                  color="teal"
                  multi-line
                  v-model="form.noty">
                  <div slot="label">
                    Message
                  </div>
                </v-text-field>
              </v-flex>
            </v-layout>
          </v-container>
          <v-expansion-panel popout>
            <v-expansion-panel-content>
              <div slot="header">Choose people to receive the message</div>
              <v-card v-for="(item,key) in users" :key="item.id" class="col-md-4">
                <v-card-text>
                  <v-checkbox :label="item.name" :value="item.id" v-model="form.message"></v-checkbox>
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
              :disabled="!formIsValid"
               @click="save"
            >Send</v-btn>
          </v-card-actions>
        </v-form>
      </v-card>
      </div>
  <!--    <input type="text" :value=>
       <footer class="w3-container w3-white">
        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal" @click="close">Close</button>
        <button type="button" class="btn btn-outline" @click="update">Update</button>
      </footer> -->
    </div>
  </div>
</template>

<script>
export default {
    props:['openRequest', 'getcomment'],
	data() {
		const defaultForm = Object.freeze({
          message: [],
        })
		return{
			dispUpdate: 'none',
	          // sharecommented: {},
	          users: {}, 
	          form: Object.assign({}, defaultForm),
	          rules: {
	            // animal: [val => (val || '').length > 0 || 'This field is required'],
	            name: [val => (val || '').length > 0 || 'This field is required']
	          },
	          snackbar: false,
	          defaultForm,
			list: {},
			valid: false,
		}
	},
	computed: {
      formIsValid () {
        return (
          this.form.message
        )
      },
    },
	methods: {
		resetForm () {
	        this.form = Object.assign({}, this.defaultForm)
	        this.$refs.form.reset()
	      },
		close() {
			this.$emit('closeRequest')
		},
		save() {
	      axios.post(`/noty`, this.$data.form)
	      .then((response) => {
	        this.close()
	            console.log(response);          
	            this.snackbar = true
	            // this.resetForm()
	            this.form.message = []
	      })
	      .catch((error) => this.errors = error.response.data.errors)
	    },
		/*update() {
			axios.patch(`/shareholder/${this.list.id}`, this.$data.list)
			.then((response) => {
				this.close()
		        console.log(response);    	
		        this.$emit('alertRequest')		
		        // this.$parent.shareholder.push(response.data)
			})
      		.catch((error) => this.errors = error.response.data.errors)
		}*/
	},
	mounted() {
		axios.post('/getusers')
		.then((response) => this.users = response.data)
		  .catch((error) => this.errors = error.response.data.errors)
	}
}
</script>