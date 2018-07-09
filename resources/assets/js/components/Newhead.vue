<template>
  <div>
    <vue-topprogress ref="topProgress"></vue-topprogress>
    <v-app id="inspire">
      <!-- temporary -->
      <v-navigation-drawer
      right
      temporary
      v-model="right"
      fixed
      >  
      <v-list dense>
        <template>
          <v-list-group
          append-icon=""
          style= "background:#f0f0f0"
          >
          <v-list-tile slot="activator" style="margin-top: 100px; padding: 30px 0 0 0;">
            <v-list-tile-content v-for="(read,key) in ReadNoty" :key="read.id">
              <v-list-tile-title  v-for="dataread in read.data" :key="dataread.thread">{{ dataread.thread }}</v-list-tile-title>
            </v-list-tile-content>
          </v-list-tile>
        </v-list-group>
      </template>
    </v-list>
  </v-navigation-drawer>
  <!-- temporary -->


  <v-navigation-drawer
  fixed
  :color="color"
  :clipped="$vuetify.breakpoint.lgAndUp"
  app
  v-model="drawer"
  >
  <v-list dense>

    <template>
      <v-list-group
      append-icon=""
      style= "background:#f0f0f0"
      >
      <v-list-tile slot="activator" style="background:#f5f5f5; padding: 0 0 40px 0; margin-top: 10px; padding: 30px 0 0 0;">
        <!-- <v-list-tile-content> -->
          <v-avatar>
            <img :src="user.profile" style="width: 100px; height: 100px;border-radius: 50%; margin-left: 60px;">
            <br>
            
            <v-divider></v-divider>
            {{ role }}
          </v-avatar>
        </v-list-tile>
      </v-list-group>
      <v-divider></v-divider>


      <v-card>
        <v-list style="cursor: pointer;">
          <v-list-group
          no-action
          >
          <v-list-tile slot="activator">
            <v-list-tile-content>
              <v-list-tile-title>{{ user.name }}</v-list-tile-title>
            </v-list-tile-content>
          </v-list-tile>
          <v-card-text class="grey lighten-3">
            <v-card>
              <a href="http://eboard2.dev/profiles" class="list__tile list__tile--link">
                <div class="list__tile__action"><i class="fa fa-user"></i></div>
                <div class="list__tile__content">
                  <div class="list__tile__title">
                    My profile
                  </div>
                </div>
              </a>
              <v-card-text class="grey lighten-3">
                <router-link to="#" class="list__tile list__tile--link">
                  <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">home</i></div>
                  <div class="list__tile__content">
                    <div class="list__tile__title">
                      Welcome {{user.name}}
                    </div>
                  </div>
                </router-link>

                <router-link to="#" class="list__tile list__tile--link">
                  <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">home</i></div>
                  <div class="list__tile__content">
                    <div class="list__tile__title">
                      Email: {{user.email}}
                    </div>
                  </div>
                </router-link>

                <router-link to="#" class="list__tile list__tile--link">
                  <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">home</i></div>
                  <div class="list__tile__content">
                    <div class="list__tile__title">
                      Create on: {{user.created_at}}
                    </div>
                  </div>
                </router-link>
              </v-card-text>
            </v-card>
          </v-card-text>
        </v-list-group>
      </v-list>
    </v-card>

    <!-- </v-list-group> -->
    <v-divider></v-divider>
    <router-link to="/" class="list__tile list__tile--link">
      <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">home</i></div>
      <div class="list__tile__content">
        <div class="list__tile__title">
          Dashboard
        </div>
      </div>
    </router-link>
    <router-link to="/company" class="list__tile list__tile--link" v-if="role === 'Admin' || role === 'admin'">
      <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">dialpad</i></div>
      <div class="list__tile__content">
        <div class="list__tile__title">
          Company
        </div>
      </div>
    </router-link>


    <router-link 
    to="/roles" 
    class="list__tile list__tile--link" 
    v-if="role === 'Admin' || role === 'admin' || role === 'companyAdmin' || role === 'companyadmin'"
    >
    <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">dialpad</i></div>
    <div class="list__tile__content">
      <div class="list__tile__title">
        Users Roles
      </div>
    </div>
  </router-link>

          <!-- <router-link to="/survey" class="list__tile list__tile--link">
              <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">history</i></div>
              <div class="list__tile__content">
                <div class="list__tile__title">
                  Survey
                </div>
              </div>
            </router-link> -->
           <!--  <router-link to="/nse" class="list__tile list__tile--link">
              <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">widgets</i></div>
              <div class="list__tile__content">
                <div class="list__tile__title">
                  NSE
                </div>
              </div>
            </router-link> -->
            <a href="http://eboard2.dev/posts/create" class="list__tile list__tile--link">
              <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">info</i></div>
              <div class="list__tile__content">
                <div class="list__tile__title">
                  Create Post
                </div>
              </div>
            </a>
            <a href="http://eboard2.dev/posts" class="list__tile list__tile--link">
              <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">info</i></div>
              <div class="list__tile__content">
                <div class="list__tile__title">
                  Blog Posts
                </div>
              </div>
            </a>
            <a href="http://eboard2.dev/users" class="list__tile list__tile--link">
              <div class="list__tile__action"><i class="fa fa-cloud"></i></div>
              <div class="list__tile__content">
                <div class="list__tile__title">
                  Users
                </div>
              </div>
            </a>
            <a href="http://eboard2.dev/eboard" class="list__tile list__tile--link">
              <div class="list__tile__action"><i class="fa fa-cloud"></i></div>
              <div class="list__tile__content">
                <div class="list__tile__title">
                  Eboard
                </div>
              </div>
            </a>        

            <a href="http://eboard2.dev/survey" class="list__tile list__tile--link">
              <div class="list__tile__action"><i class="fa fa-user"></i></div>
              <div class="list__tile__content">
                <div class="list__tile__title">
                  Do a survey
                </div>
              </div>
            </a>
            <!-- calendar -->

            <v-card>
              <v-list style="cursor: pointer;">
                <v-list-group
                no-action
                >
                <v-list-tile slot="activator">
                  <v-list-tile-content>
                    <v-list-tile-title>Calendar</v-list-tile-title>
                  </v-list-tile-content>
                </v-list-tile>
                <v-card-text class="grey lighten-3">
                  <router-link to="/board" class="list__tile list__tile--link">
                    <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">history</i></div>
                    <div class="list__tile__content">
                      <div class="list__tile__title">
                        AGM
                      </div>
                    </div>
                  </router-link>
                  <router-link to="/committee" class="list__tile list__tile--link">
                    <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">history</i></div>
                    <div class="list__tile__content">
                      <div class="list__tile__title">
                        Committee Calendar
                      </div>
                    </div>
                  </router-link>
                  <router-link to="/sam" class="list__tile list__tile--link">
                    <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">history</i></div>
                    <div class="list__tile__content">
                      <div class="list__tile__title">
                        Special AGM
                      </div>
                    </div>
                  </router-link>
                  <router-link to="/event" class="list__tile list__tile--link">
                    <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">history</i></div>
                    <div class="list__tile__content">
                      <div class="list__tile__title">
                        Upcoming  events
                      </div>
                    </div>
                  </router-link>
                </v-card-text>
              </v-list-group>
            </v-list>
          </v-card>




          <v-card>
            <v-list style="cursor: pointer;">
              <v-list-group
              no-action
              >
              <v-list-tile slot="activator">
                <v-list-tile-content>
                  <v-list-tile-title>Documents</v-list-tile-title>
                </v-list-tile-content>
              </v-list-tile>
              <v-card-text class="grey lighten-3">
                <router-link to="/category" class="list__tile list__tile--link">
                  <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">info</i></div>
                  <div class="list__tile__content">
                    <div class="list__tile__title">
                      Categories
                    </div>
                  </div>
                </router-link>
                <router-link to="/subcats" class="list__tile list__tile--link">
                  <div class="list__tile__action"><i aria-hidden="true" class="icon material-icons">dialpad</i></div>
                  <div class="list__tile__content">
                    <div class="list__tile__title">
                      Docs without sub-category
                    </div>
                  </div>
                </router-link>
                <router-link to="/showall" class="list__tile list__tile--link">
                  <div class="list__tile__action">    <v-icon>business</v-icon></div>
                  <div class="list__tile__content">
                    <div class="list__tile__title">
                      Categories & sub categories
                    </div>
                  </div>
                </router-link>
                <a href="http://eboard2.dev/home" class="list__tile list__tile--link">
                  <div class="list__tile__action"><v-icon>backup</v-icon></div>
                  <div class="list__tile__content">
                    <div class="list__tile__title">
                      Upload documents
                    </div>
                  </div>
                </a>

                <a href="http://eboard2.dev/docs" class="list__tile list__tile--link">
                  <div class="list__tile__action"><i class="fa fa-book"></i></div>
                  <div class="list__tile__content">
                    <div class="list__tile__title">
                      See documents
                    </div>
                  </div>
                </a>
              </v-card-text>
            </v-list-group>
          </v-list>
        </v-card>

      </template> 
    </v-list>
  </v-navigation-drawer>
  <v-toolbar
  v-for="(comp, key) in company"
  :key="comp.id"
  v-if="comp.id === user.company_id"
  :color="comp.color"
  dark
  app
  :clipped-left="$vuetify.breakpoint.lgAndUp"
  fixed
  >
  <v-toolbar-title style="width: 300px" class="ml-0 pl-3">
    <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>
    <a href="/" class="link" style="color: #fff;"><span class="hidden-sm-and-down">{{comp.name}}</span></a>
    <img style="width: 60px; height: 60px; border-radius: 50%;" :src="logo" alt="">
  </v-toolbar-title>
  <v-spacer></v-spacer>

  <!-- Notifications -->
  <div class="text-xs-center">
   <v-bottom-sheet v-model="sheet">
     <!-- <v-btn > -->
      <v-badge slot="activator" left style="cursor: pointer;" class="btn theme--dark white">
        <span slot="badge">{{ noty.length }}</span>
        <v-icon large color="grey lighten-1">mail</v-icon>
      </v-badge>
      <!-- </v-btn> -->
      <v-list>
       <v-subheader>Notifications</v-subheader> 
       <v-form @submit.prevent ref="form" v-if="noty.length != 0">
         <v-btn @click="mark" color="indigo" dark>Clear notifications</v-btn>
       </v-form>
       <v-list v-else>No notifications</v-list>
       <v-divider></v-divider>
       <v-list-tile
       v-for="noti in noty"
       :key="noti.id"
       @click="sheet = false"
       >
       <v-list subheader>
         <v-list-tile-action>
           <v-list-tile-title>
            {{noti.data.thread}}~{{noti.data.authUser}}
          </v-list-tile-title>
        </v-list-tile-action>
      </v-list>
    </v-list-tile>
  </v-list>
</v-bottom-sheet>
</div>
<!-- Notifications -->


<v-menu
offset-x
:close-on-content-click="false"
:nudge-width="200"
v-model="menu"
>
<v-btn :color="comp.color" dark slot="activator">Change color</v-btn>
<v-card id="card">
  <v-list>
    <v-list-tile avatar  v-for="item in items" :key="item.color" class="col-md-4">
      <v-list-tile-avatar>
        <v-avatar :class="item.color">
          <!-- <span class="white--text headline"> {{item.text}} </span>  -->
        </v-avatar>
      </v-list-tile-avatar>
      <v-list-tile-content>
        <v-list-tile-title><span class="white--text headline"> {{item.text}} </span></v-list-tile-title>
        <v-radio-group v-model="comp.color" row>
          <v-radio
          :value="item.color"
          :color="color">
        </v-radio>
      </v-radio-group>
      <!-- <input type="radio" > -->
    </v-list-tile-content>
  </v-list-tile>
</v-list>
<v-divider></v-divider>
</v-card>
</v-menu>
<v-icon @click.stop="right = !right" style="cursor: pointer">apps</v-icon>
<!-- <v-toolbar-side-icon></v-toolbar-side-icon> -->
</v-toolbar>
</v-app>
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
</div>
</template>

<script>
import { vueTopprogress } from 'vue-top-progress'    
export default {
  props: ['user'],
  components: {
    vueTopprogress
      // , mynew
    },
    data: () => ({
      color: 'black',
      text: '',
      top: 'top',
      snackbar: false,
      mode: '',
      timeout: 2000,
      drawerRight: false,
      right: null,
      notyNo: '',
      role: '',
      noty: {},
      menu: false,
      active: false,
      action: 'local_activity',
      logo: {},
      ReadNoty: {},
      // mini: true,
      company: {},
      items: [
      { color: 'red', text: 'Red' },
      { color: 'green', text: 'Green' },
      { color: 'grey', text: 'grey' },
      { color: 'orange', text: 'Orange' },
      { color: 'purple', text: 'purple' },
      { color: 'blue', text: 'blue' },
      { color: 'indigo', text: 'indigo' },
      { color: 'pink', text: 'pink' },
      { color: 'cyan', text: 'cyan' },
      ],
      sheet: false,
      dialog: false,
      changeColor: 'item.color',
      drawer: true,
    }),
    methods: {
      mark() {
        if (confirm('Are you sure')) {
          axios.post('/markAs')
          .then((response) => {
            // console.log(response);
            this.text = 'Notifications removed';
            this.snackbar = true; 
            this.noty = [];
            this.notyNo = 0;
          })
          .catch((error) => this.errors = error.response.data.errors)
        }
      }
    },
    beforeCreate() {
      axios.post('/getRole')
      .then((response) => this.role = response.data)
      .catch((error) => this.errors = error.response.data.errors)
    },
    created() {
      axios.post('/getReadNoty')
      .then((response) => this.ReadNoty = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/getnoty')
      .then((response) => this.notyNo = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/notyget')
      .then((response) => this.noty = response.data)
      .catch((error) => this.errors = error.response.data.errors)
    },
    mounted() {
      /*console.log('notification mounted');
      Echo.private('App.User.1')
      .notification((notification) => {
        console.log(notification);
        let newUnreadNotifications={data:{thread:notification.thread,user:notification.user}}
        this.noty.push(newUnreadNotifications);
              // this.$toaster.success('You have a message'+this.user.name);
              // alert(this.user.name);

            });*/

      this.$refs.topProgress.start()

       // Use setTimeout for demo
       setTimeout(() => {
         this.$refs.topProgress.done()
       }, 2000)

       axios.post('/getusers')
       .then((response) => this.users = response.data)
       .catch((error) => this.errors = error.response.data.errors)

       axios.post('/getlogo')
       .then((response) => this.logo = response.data)
       .catch((error) => this.errors = error.response.data.errors)

       axios.post('/getcompany')
       .then((response) => this.company = response.data)
       .catch((error) => this.errors = error.response.data.errors)

       axios.post('/getRole')
       .then((response) => this.role = response.data)
       .catch((error) => this.errors = error.response.data.errors)
     }
   }
   </script>


   <style scoped>
   .list__tile .avatar {
    min-width: 10px !important;
  }  
  
  .headline {
    font-size: 14px !important;
  }


  .menuable__content__active {
    z-index: 1000;
    background: #f44336 !important;
  } 
  .menuable__content__active{
    max-width: 500px !important;
  }
  #card{
    max-width: 350px;
  }
  </style>