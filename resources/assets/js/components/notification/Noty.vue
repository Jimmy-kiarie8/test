<template>
    <div>
    <div>
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
      <!-- <mynew></mynew> -->
      <v-content>
        <v-container fluid fill-height>
          <v-layout justify-center align-center>
            <section class="content">
              <div class="row">
                <div class="col-xs-12">
                  <div class="box">
                    <div class="box-header">
                      <h3 class="box-title">List Of all notifications</h3>
                      <button type="button" class="btn pull-right" @click="openAdd">
                        Send a notification
                      </button>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                      <table id="example1" class="table table-bordered table-striped table-hover">
                        <thead>
                        <tr>
                          <th>Notification</th>
                          <th>Sent by</th>
                          <!-- <th>Action</th> -->
                        </tr>
                        </thead>
                        <tbody>
                          <tr v-for="noti in noty">
                            <td>{{ noti.data.thread }}</td>
                            <td>{{ noti.data.user.name }}</td>
                            <!-- td style="width: 15%;">
                              <i class="fa fa-edit" aria-hidden="true" @click="openUpdate" title="edit"></i>
                            </td> -->
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <!-- /.box-body -->
                  </div>
                  <!-- /.box -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </section>

          </v-layout>
        </v-container>
      </v-content>
    <!-- </v-app> -->
    <mynotysend @closeRequest="close" :openRequest="dispUpdate" @alertRequest="snackbartrue"></mynotysend>
  </div>
    <vue-topprogress ref="topProgress"></vue-topprogress>
  </div>
</template>

<script>
let mynotysend = require('./notysend.vue')
import { vueTopprogress } from 'vue-top-progress'
export default {
  components: {
    mynotysend, vueTopprogress
  },
  data() {
        return{
          dispUpdate: 'none',
          snackbar: false,
          userget: {},  
          noty: {},
          notyNo: '',
          color: 'blue',
          text: '',
          top: 'top',
          snackbar: false,
          mode: '',
          timeout: 2000,
        }
  },

  methods: {
    openAdd(){
      // this.$children[0].list = this.commented[key]
      // this.$children[1].list = this.noty[key]
      this.dispUpdate = 'block'
    },
    close() {
      this.dispUpdate = 'none'
    },
    snackbartrue() {
      this.snackbar = true;
      this.color = 'blue';
      this.text = 'successifully added';
    },
  },
  mounted() {
    axios.post('/getusers')
    .then((response) => this.userget = response.data)
      .catch((error) => this.errors = error.response.data.errors) 

      axios.post('/getnoty')
    .then((response) => this.notyNo = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/notyget')
    .then((response) => this.noty = response.data)
      .catch((error) => this.errors = error.response.data.errors)
  },
  created() {
   
  }
}
  </script>



<style scoped>
/*  #app{
    width: 70%;
    margin: auto;
    margin-top: 30px;
  }
  .jumbotron{
    background: #fff;
  }*/

</style>
<!-- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste dolorem reprehenderit alias voluptatum illum sunt consectetur, aliquam cum aspernatur dolorum rem! Provident corporis atque assumenda nihil deleniti odit natus esse! -->