<template>
<div class="container">
	<v-snackbar
	     :top= 'top'
	   	 :timeout="timeout"
	     :color="color"
	     :multi-line="mode === 'multi-line'"
	     :vertical="mode === 'vertical'"
	     v-model="snackbar"
	  >
	  {{ text }}
	  <v-btn dark flat @click.native="snackbar = false">Close</v-btn>
	</v-snackbar>
	<v-content>
	    <v-container fluid fill-height>
	        <v-layout justify-center align-center>
				<div class="row justify-content-center">
				    <div class="col-md-8">
				        <div class="card">
				            <div class="card-header text-center">
				                User Update details 
				            </div>
				            <div class="card-body">
								<v-form @submit.prevent ref="form">
								  <v-container grid-list-xl fluid v-for="(item,key) in usersInfo" :key='item.id'>
								    <v-flex xs12 sm6>
								      <v-text-field
								        color=""
								        label="Name"
								        required
								        v-model="item.name"
								        :rules="rules.name"
								      ></v-text-field>
								    </v-flex>
								    <v-flex xs12 sm6>
								      <v-text-field
								        color=""
								        label="email"
								        required
								        v-model="item.email"
								        :rules="emailRules"
								      ></v-text-field>
								    </v-flex>
								    <!-- <v-flex xs12 sm6>
								      <v-text-field
								        color=""
								        label="Password"
								        required
								        v-model="item.name"
								        :rules="rules.name"
								      ></v-text-field>
								    </v-flex> -->
								    <v-flex xs12 sm6>
								      <v-text-field
								        color=""
								        label="Phone number"
								        required
								        v-model="item.phone_number"
								        :rules="rules.name"
								      ></v-text-field>
								    </v-flex>
								    <v-flex xs12 sm6>
								      <v-text-field
								        color=""
								        label="Address"
								        required
								        v-model="item.address"
								        :rules="rules.name"
								      ></v-text-field>
								    </v-flex>
								    <v-card-actions>
								      <v-btn flat @click="resetForm">Cancel</v-btn>
								      <v-spacer></v-spacer>
								      <v-btn
								        flat
								        color="primary"
								        type="submit"
								        @click="save"
								        :disabled="!formIsValid"
								      >Submit</v-btn>
								    </v-card-actions>
								  </v-container>
								</v-form>
							</div>
						</div>
					</div>
				</div>
			</v-layout>
		</v-container>
	</v-content>
</div>
</template>

<script>
export default{
	props: ['user'],
	data() {
		return{
			text: '',
			top: 'top',
			snackbar: false,
			mode: '',
			color: '',
			timeout: 7000,
			usersInfo: {},
			rules: {
			  name: [val => (val || '').length > 0 || 'This field is required']
			},
			emailRules: [
				v => !!v || 'E-mail is required',
				v => /^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/.test(v) || 'E-mail must be valid'
			],
		}
	},
	methods: {
		save() {
			axios.patch(`/usersupdate/${this.user.id}`, this.$data.usersInfo)
			.then((response) => {
				console.log(response);
			})
			.catch((error) => this.errors = error.response.data.errors)
		},
		resetForm () {
			this.user = Object.assign({}, this.defaultForm)
			this.$refs.form.reset()
			// this.close()
		},
	},
	mounted() {
		axios.post('/getuserinfo')
		.then((response) => this.usersInfo = response.data)
		  .catch((error) => this.errors = error.response.data.errors)
	},
	computed: {
		formIsValid () {
			return (
				this.user.name &&
				this.user.email 
			)
		}
	},
}
</script>