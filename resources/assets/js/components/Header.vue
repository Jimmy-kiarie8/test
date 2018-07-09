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
        ></v-navigation-drawer>
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
            <v-list-tile slot="activator" style="background:#f5f5f5; padding: 0 0 40px 0; padding: 0 0 40px 0; margin-top: 10px; padding: 30px 0 0 0;">
              <!-- <v-list-tile-content> -->
                <v-avatar>
                <img :src="user.profile" style="width: 100px; height: 100px;border-radius: 50%; margin-left: 60px;">
                {{ role }}
              </v-avatar>
              </v-list-tile>
          </v-list-group>
          
          <v-divider></v-divider>
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
      <!-- <v-avatar>
        <img :src="user.profile">
      </v-avatar> -->
      <v-btn slot="activator">
        <v-icon>apps</v-icon>
      </v-btn>

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
</div>
</template>

<script>
import { vueTopprogress } from 'vue-top-progress'    
  export default {
    components: {
      vueTopprogress
      // , mynew
    },
    props: ['user'],
    data: () => ({
      color: 'purple',
      drawerRight: false,
      right: null,
      menu: false,
      logo: {},
      role: '',
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
      dialog: false,
      changeColor: 'item.color',
      drawer: true,
    }),
    props: ['user'],
    mounted() {
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