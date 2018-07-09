<template>
  <div id="id01" class="w3-modal" style="padding: 0 0 100px 0" :style="{display: openRequest}">
    <div class="w3-modal-content w3-animate-zoom" style="width: 80%; margin: auto">
      <header class="w3-container w3-white"> 
        <span  class="w3-button w3-display-topright" @click="close">&times;</span>
        <h2>Update sub category</h2><hr>
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
          <span>Registration successful!</span>
          <v-icon dark>check_circle</v-icon>
        </v-snackbar>
        <!-- stepers -->
        <v-stepper v-model="e1">
          <v-stepper-header>
            <v-stepper-step step="1" :complete="e1 > 1">Name of step 1</v-stepper-step>
            <v-divider></v-divider>
            <v-stepper-step step="2" :complete="e1 > 2">Name of step 2</v-stepper-step>
          </v-stepper-header>
          <v-stepper-items>
            <v-stepper-content step="1">
              <v-form @submit.prevent ref="form">
                <v-expansion-panel popout>
                  <v-expansion-panel-content>
                    <div slot="header">Item</div>
                    <v-card v-for="(item,key) in passSub" :key="item.id" class="col-md-4">
                      <v-card-text>
                        <v-checkbox :label="item.title" :value="item.id" v-model="list.sub_cat"></v-checkbox>
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
                  >Next</v-btn>
                </v-card-actions>
              </v-form>
              <!-- <v-card color="grey lighten-1" class="mb-5" height="200px"></v-card> -->
              <!-- <v-btn color="primary" @click="update">Next</v-btn> -->
              <!-- <v-btn flat>Cancel</v-btn> -->
            </v-stepper-content>
            <v-stepper-content step="2">
              <v-flex xs12 sm6>
                <v-text-field
                color="purple darken-2"
                label="Name"
                required
                v-model="form.noty"
                :rules="rules.name"
                ></v-text-field>
              </v-flex>
              <v-expansion-panel popout>
                <v-expansion-panel-content>
                  <div slot="header">Choose people to receive the email</div>
                  <v-card v-for="(item,key) in users" :key="item.id" class="col-md-4">
                    <v-card-text>
                      <v-checkbox :label="item.email" :value="item.email" v-model="form.email"></v-checkbox>
                    </v-card-text>
                  </v-card>
                </v-expansion-panel-content>
              </v-expansion-panel>
              <!-- <v-card color="grey lighten-1" class="mb-5" height="200px"></v-card> -->
              <v-card-actions>
                <v-btn flat @click="resetForm">Cancel</v-btn>
                <v-spacer></v-spacer>
                <v-btn
                flat
                color="primary"
                type="submit"
                @click="send"
                :disabled="!sendIsValid"
                >Send email</v-btn>
              </v-card-actions>
              <!-- <v-btn color="primary" @click="send">Send email</v-btn> -->
              <!-- <v-btn flat>Cancel</v-btn> -->
            </v-stepper-content>
          </v-stepper-items>
        </v-stepper>

        <!-- stepers -->





        
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
  props:['openRequest', 'passSub', 'passatt'],
  data() {
    const defaultForm = Object.freeze({
        // sub_cat: 0,
        email: [],
        noty: '',
        // list: {}
      })

    return{
      e1: 0,
      manage: {},
      list: {},
      users: {},
      disp: 'none',
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
      this.form = Object.assign({}, this.defaultForm)
          // this.$refs.form.reset()
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
			axios.patch(`/docs/${this.list.id}`, this.$data.list)
			.then((response) => {
				// this.resetForm()
        console.log(response);    			
            // this.$emit('alertRequest')
            this.e1 = 2
		        // this.$parent.attachments.sub_cat.push(response.data)
            // this.attachments.splice(key, 1)
          })
      .catch((error) => this.errors = error.response.data.errors)
    },
    send() {
      axios.patch(`/mailsend/${this.list.id}`, this.$data.form)
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
        this.list.sub_cat
        )
    },
    sendIsValid () {
      return (
        this.form.email &&
        this.form.noty 
        )
    }
  },
  mounted() {
    axios.post('/getusers')
    .then((response) => this.users = response.data)
    .catch((error) => this.errors = error.response.data.errors)
  }

}
</script>


<style scoped>
.w3-modal-content{
  min-height: 400px; 
}
</style>