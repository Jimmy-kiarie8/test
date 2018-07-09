<template>
<div id="id01" class="w3-modal"  :style="{display: openRequest}">
    <div class="w3-modal-content w3-animate-zoom" style="width: 90%; margin: auto">
      <header class="w3-container w3-white"> 
        <span  class="w3-button w3-display-topright" @click="close">&times;</span>
        <h2>{{list.title}} answers</h2><hr>
      </header>
      <div class="w3-container">
        <table id="example1" class="table table-bordered table-striped table-hover">
          <thead>
          <tr>
            <th>Question</th>
            <th>User</th>
            <th>Survey name</th>
            <th>Created on</th>
          </tr>
          </thead>
          <tbody>
            <tr v-for="quest in questions">
                <v-expansion-panel popout>
                <v-expansion-panel-content>
                    <div slot="header">
                      <td>{{ quest.title }}</td>         
                    </div>
                    <v-card>
                      <v-card-text>
                        <h2><b>Answers</b></h2>
                        <p v-for="ans in newAns" v-if="ans.question_id === quest.id">{{ ans.answer }} <br></p><hr>
                      </v-card-text>
                    </v-card>
                  </v-expansion-panel-content>
                </v-expansion-panel>
              <!-- </td> -->
              <td v-for="user in users" v-if="user.id === quest.user_id">{{ user.name }}</td> 
              <!-- <td>{{ list.title }}</td> -->
              <td>{{ list.title }}</td>
              <td>{{ list.created_at }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    props:['openRequest'],
	data() {

		return{
     list: {},
     survey: {},
     questions: {},
     users: {},
	   newAns: {},
  	}
	},
	methods: {
		close() {
			this.$emit('closeRequest')
		},
  },
  mounted() {
    axios.post('/getsurvey')
    .then((response) => this.survey = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/getAns')
    .then((response) => this.newAns = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/getquest')
    .then((response) => this.questions = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/getusers')
    .then((response) => this.users = response.data)
      .catch((error) => this.errors = error.response.data.errors)
  }
}
</script>