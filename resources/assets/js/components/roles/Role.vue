<template>
  <div>
  <!-- <transition  name="fade"> -->
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
                    <h3 class="box-title">List Of all Users</h3>
                  </div>
                  <!-- /.box-header -->
                  <div class="box-body">
                    <table id="example1" class="table table-bordered table-striped table-hover">
                      <thead>
                      <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Date created</th>
                        <th>Action</th>
                      </tr>
                      </thead>
                      <tbody>
                        <tr v-for="item, key in users" :key="item.id">
                          <td>{{ item.name }}</td>
                          <td>{{ item.email }}</td>
                          <td>{{ item.created_at }}</td>
                          <td style="width: 15%;">
                            <i class="fa fa-user" aria-hidden="true" @click="openUser(key)" title="user"></i>
                            <i class="fa fa-eye" aria-hidden="true" @click="openshow(key)" title="user"></i>
                          </td>
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
    <userRole @closeRequest="close" :openRequest="dispUser" @alertRequest="snackbartrue"></userRole>
    <showRole @closeRequest="close" :openRequest="dispShow"></showRole>
  <!-- </v-app> -->
</div>
  <!-- <div v-else>
    <v-content>
      <v-container fluid fill-height>
        <v-layout justify-center align-center>
          <div class="flex-center position-ref full-height">
            <div class="content">
                <div class="title">
                    Sorry, the page you are looking for could not be found.                
                </div>
            </div>
        </div>
        </v-layout>
      </v-container>
    </v-content>
     v-if="role == 'Admin' || role == 'companyAdmin' || role == 'admin' || role == 'companyadmin'"
  </div> -->
  <vue-topprogress ref="topProgress"></vue-topprogress>
</div>
</template>


<script>
import { vueTopprogress } from 'vue-top-progress'
let userRole = require('./Update.vue')
let showRole = require('./ShowRole.vue')
// let mynew = require('../Newhead.vue')
export default{
  props: ['user', 'rolename'],
  components: {
    userRole, showRole, vueTopprogress
    // , mynew
  },

  data() {
    return{
      color: 'blue',
      text: '',
      top: 'top',
      snackbar: false,
      mode: '',
      timeout: 2000,
      drawer: null,
      group: {},
      users: {},
      dispUser: 'none',
      dispShow: 'none',
      role: '',
    }
  },
  methods: {
    snackbartrue() {
      this.snackbar = true;
      this.color = 'blue';
      this.text = 'successifully added';
    },
    openUser(key){
      this.$children[2].list = this.users[key]
      this.dispUser = 'block'
    },
    openshow(key){
      this.$children[3].list = this.users[key]
      this.dispShow = 'block'
    },
    close() {
      this.dispUser = this.dispShow = 'none'
    },
    del(key, id){
      if (confirm('Are you sure')) {
        axios.delete(`/group/${id}`)
        .then((response) => {
          console.log(response);
          this.group.splice(key, 1)

          this.snackbar = true
          this.text = 'deleted Success'
        })
        .catch((error) => this.errors = error.response.data.errors)
      }
    }
  },
  created() {
      axios.post('/getRole')
      .then((response) => this.role = response.data)
        .catch((error) => this.errors = error.response.data.errors)
  },
  mounted() {
    this.$refs.topProgress.start()

       // Use setTimeout for demo
       setTimeout(() => {
         this.$refs.topProgress.done()
       }, 2000)

    axios.post('/getgroup')
    .then((response) => this.group = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/getusers')
    .then((response) => this.users = response.data)
      .catch((error) => this.errors = error.response.data.errors)
  },

   beforeRouteEnter(to, from, next) {
     next(vm => {
      if (vm.rolename === 'Admin') {
        next(); 
      } else {
        next('/');
      }
    })
   }
}
</script>

<style scoped>
input {
  background: #000 !important;
}
i{
  padding: 5px;
  cursor: pointer;
}
.fa{
  background: #f0f0f0;
  /*padding: 6px;*/
}
.fa:hover{
  background: #93d6c3;
}
.fa-eye{
  color: #0c6
}
.fa-trash{
  color: #f00
}
/*element.style {
    margin-top: 68px !important;
}*/
/*.navigation-drawer--fixed{
  margin-top: 200px !important;
}*/
.navigation-drawer--open{
  /*margin-top: 60px !important;*/
}
/*.container.fill-height {
    margin-top: -480px;
}*/

.fade-enter-active{
  transition: opacity 1s, transform 1s;
}
.fade-enter{
  opacity: 0;
  transform: translate(20px);
}


html, body {
  background-color: #fff;
  color: #636b6f;
  font-family: 'Raleway', sans-serif;
  font-weight: 100;
  height: 100vh;
  margin: 0;
}

.full-height {
  height: 100vh;
}

.flex-center {
  align-items: center;
  display: flex;
  justify-content: center;
}

.position-ref {
  position: relative;
}

.content {
  text-align: center;
}

.title {
  font-size: 36px;
  padding: 20px;
}
</style>