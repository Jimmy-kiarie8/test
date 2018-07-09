<template>
  <div>
  <vue-topprogress ref="topProgress"></vue-topprogress>
  <transition  name="fade">
  <div>
    <v-content>
      <v-container fluid fill-height>
        <v-layout justify-center align-center>
          <section class="content">
            <!-- Small boxes (Stat box) -->
            <div class="row">
              <div class="col-lg-3 col-xs-6 col-md-4" id="cols">
                <!-- small box -->
                <div class="small-box bg-aqua">
                  <div class="inner">
                    <h3>{{users}}</h3>

                    <p>Users </p>
                  </div>
                  <div class="icon">
                    <i class="ion ion-person"></i>
                  </div>
                  <!-- <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a> -->
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-xs-6 col-md-4" id="cols">
                <!-- small box -->
                <div class="small-box bg-purple">
                  <div class="inner">
                    <h3>{{commentNo}}</h3>

                    <p>Comments</p>
                  </div>
                  <div class="icon">
                    <i class="fa fa-comments"></i>
                  </div>
                  <!-- <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a> -->
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-xs-6 col-md-4" id="cols">
                <!-- small box -->
                <div class="small-box bg-orange">
                  <div class="inner">
                    <h3>{{attaNo}}</h3>

                    <p>Uploads</p>
                  </div>
                  <div class="icon">
                    <i class="fa fa-cloud-upload"></i>
                  </div>
                  <!-- <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a> -->
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-xs-6 col-md-4" id="cols">
                <!-- small box -->
                <div class="small-box bg-green">
                  <div class="inner">
                    <h3>{{companyNo}}</h3>

                    <p>Companies registered</p>
                  </div>
                  <div class="icon">
                    <i class="fa fa-building"></i>
                  </div>
                  <!-- <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a> -->
                </div>
              </div>
              <!-- ./col -->
            </div>
            <!-- /.row -->
            <!-- Main row -->
           <v-card flat>
              <v-snackbar
                v-model="snackbar"
                absolute
                top
                right
                color="success"
              >
                <span>Comment success!</span>
              </v-snackbar>
              <v-form @submit.prevent ref="form">
                <v-container grid-list-xl fluid>
                  <v-layout wrap>
                    <v-flex xs12>
                      <v-text-field
                        color="teal"
                        multi-line
                        v-model="form.comment">
                        <div slot="label">
                          comment
                        </div>
                      </v-text-field>
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
                    :disabled="!formIsValid"
                     @click="save"
                  >Comment</v-btn>
                </v-card-actions>
              </v-form>
            </v-card>
            <div class="panel">
              <div class="panel-header">
                <h1>Comments</h1>
              </div><hr>
              <div class="panel-body" v-for="item in comments">
                <small>
                <b v-for="(username, key) in userget" :key="username.id" v-if="username.id === item.user_id">
                  {{username.name}} says</b> <br> 
                <p>{{item.comment}}</p><br>
                  on {{item.created_at}}
                </small><hr>
              </div>
            </div>
          </section>
        </v-layout>
      </v-container>
    </v-content>
</div>
</transition>
</div>
</template>


<script>
import { vueTopprogress } from 'vue-top-progress'
export default {
  components: {
    vueTopprogress
  },
  props: ['user'],
  data() {
    const defaultForm = Object.freeze({
          comment: '',
        })
    return{
      drawer: null,
          view: {},
          notyNo: '',
      form: Object.assign({}, defaultForm),
          rules: {
            // animal: [val => (val || '').length > 0 || 'This field is required'],
            name: [val => (val || '').length > 0 || 'This field is required']
          },
          snackbar: false,
          defaultForm,
          userget: {},
          users: {},
          comments: {},
          commentNo: {},
          companyNo: {},
          attaNo: {},
    }
  },
  computed: {
      formIsValid () {
        return (
          this.form.comment
        )
      }
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
      axios.post('/comment', this.$data.form)
      .then((response) => {
        this.close()
            console.log(response);          
            this.comments.push(response.data)
            this.snackbar = true
            this.resetForm()
            // this.$emit('alertRequest')
      })
      .catch((error) => this.errors = error.response.data.errors)
    }
  },
  created() {

    axios.post('/getview')
    .then((response) => this.view = response.data)
      .catch((error) => this.errors = error.response.data.errors)
  },
  mounted() {
    this.$refs.topProgress.start()

       // Use setTimeout for demo
       setTimeout(() => {
         this.$refs.topProgress.done()
       }, 2000)

      axios.post('/getusersNo')
      .then((response) => this.users = response.data)
        .catch((error) => this.errors = error.response.data.errors)

    axios.post('/getcomm')
    .then((response) => this.comments = response.data)
      .catch((error) => this.errors = error.response.data.errors)

    axios.post('/getusers')
    .then((response) => this.userget = response.data)
      .catch((error) => this.errors = error.response.data.errors)
  },
  created() {
    axios.post('/compNo')
    .then((response) => this.companyNo = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/commentNo')
    .then((response) => this.commentNo = response.data)
      .catch((error) => this.errors = error.response.data.errors)


      axios.post('/attaNo')
    .then((response) => this.attaNo = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/getnoty')
    .then((response) => this.notyNo = response.data)
      .catch((error) => this.errors = error.response.data.errors)
  }
}

  </script>


<style>
  /*.container.fill-height {
      margin-top: -480px;
  }*/
  .fade-enter-active{
    transition: opacity 2s, transform 2s;
  }

  .fade-enter{
    opacity: 0;
    transform: translate(20px);
  }
  #cols{
    width: 24% !important;
  }
  .content--wrap{
    margin-top: -50px;
  }
</style>