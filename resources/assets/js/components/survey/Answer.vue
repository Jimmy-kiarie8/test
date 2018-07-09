<template>
<div id="id01" class="w3-modal" :style="{display: openRequest}">
    <div class="w3-modal-content w3-animate-zoom" style="width: 70%; margin: auto">
      <header class="w3-container w3-white"> 
        <span @click="close" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Answer</h2>
      </header>
      <div class="w3-container">
        <div class="row justify-content-center">
          <div class="col-md-12">
              <div class="card">
                  <div class="card-header text-center">
                     <h4 class="pull-left">{{list.title}} </h4><br>
                     <p class="pull-left">{{list.description}}</p> <hr>
                      <select v-model="form.questions_id" style="border:2px solid #000;">
                        <option :value="list.id" selected>{{list.title}}</option>
                      </select>
                  </div>
                  <div class="card-body">
                    <h2 class="text-center">Questions</h2>
                    <!-- <v-form @submit.prevent ref="form"> -->
                      <v-expansion-panel focusable v-for="(item,index) in questions" :key="item.id">
                        <v-expansion-panel-content v-if="list.id === item.survey_id">
                            <div slot="header">
                              {{ item.title }}
                            </div>
                            <v-card>
                              <v-card-text class="grey lighten-3">
                                <v-form @submit.prevent ref="form">
                                <div v-if="item.question_type === 'textarea'">
                                  
                                  <v-flex xs12>
                                    <v-checkbox  
                                      :value="item.id" 
                                      v-model="form.questions_id" 
                                      hide-details 
                                      class="shrink mr-2" hidden
                                    ></v-checkbox>
                                    <v-text-field
                                      color="teal"
                                      multi-line
                                      v-model="form.answer[index]"
                                    >
                                      <div slot="label">
                                        Description
                                      </div>
                                    </v-text-field>
                                  </v-flex>
                                </div>

                                <v-card-actions>
                                      <v-btn flat @click="close">Cancel</v-btn>
                                      <v-spacer></v-spacer>
                                      <v-btn
                                        flat
                                        color="primary"
                                        type="submit"
                                        @click="save"
                                        :disabled="!formIsValid"
                                      >Submit</v-btn>
                                </v-card-actions>
                              </v-form>
                                <v-form @submit.prevent ref="form">
                                <div v-if="item.question_type === 'text'">
                                  <v-card>
                                    <v-card-text>
                                      <v-layout align-center>
                                        <v-flex xs12>
                                        <v-checkbox  
                                          :value="item.id" 
                                          v-model="form.questions_id" 
                                          hide-details 
                                          class="shrink mr-2" hidden
                                        ></v-checkbox>
                                        <v-text-field
                                          required
                                          v-model="form.answer[index]"
                                          :rules="rules.name"
                                          label="Check the box to answer" :disabled="!enabled"
                                        ></v-text-field>
                                      </v-flex>
                                      </v-layout>
                                    </v-card-text>
                                  </v-card>
                                  
                                  <!-- <v-flex xs12 sm6>
                                    <v-text-field
                                      color="purple darken-2"
                                      label="Name"
                                      required
                                      v-model="form.answer[index]"
                                      :rules="rules.name"
                                    ></v-text-field>
                                  </v-flex> -->
                                  <!-- <v-checkbox :label="item.name" :value="item.id" v-model="form.name"></v-checkbox> -->
                                </div>

                                <v-card-actions>
                                      <v-btn flat @click="close">Cancel</v-btn>
                                      <v-spacer></v-spacer>
                                      <v-btn
                                        flat
                                        color="primary"
                                        type="submit"
                                        @click="save"
                                        :disabled="!formIsValid"
                                      >Submit</v-btn>
                                </v-card-actions>
                              </v-form>
                                <div v-if="item.question_type === 'checkbox'">
                                  <v-checkbox :label="item.name" :value="item.id" v-model="form.name"></v-checkbox>
                                </div>
                              </v-card-text>
                            </v-card>
                        </v-expansion-panel-content>
                      </v-expansion-panel>
                    <!-- </v-form> -->

                    <!-- <v-form @submit.prevent ref="form">
                      <v-container grid-list-xl fluid>

                      </v-container>
                    </v-form> -->
                  </div>
                  <div class="card-footer"></div>
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template> 

<script>
export default {
    props:['openRequest'],
    data() {
      const defaultForm = Object.freeze({
        answer: [],
        description: [],
        name: [],
        questions_id: []
      })
    	return{
        enabled: true,
        questions: {},
    		list: '',
        form: Object.assign({}, defaultForm),
        // disp: 'block',
        rules: {
          name: [val => (val || '').length > 0 || 'This field is required']
        },
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
    
    save() {
      axios.post('/answers', this.$data.form)
      .then((response) => {
          // this.close()
          // this.resetForm()
          this.form.answer = []
          this.form.questions_id = []
          this.$emit('alertRequest')
          console.log(response);
      })
      .catch((error) => this.errors = error.response.data.errors)
    }
	},
  computed: {
    formIsValid () {
      return (
        this.form.answer 
        )
    }
  },
  mounted() {
    axios.post('/getquest')
    .then((response) => this.questions = this.temp = response.data)
      .catch((error) => this.errors = error.response.data.errors)

  }
}

</script>

<style>
.list-group-item .list-group{
  color: #000 !important;
} 

</style>