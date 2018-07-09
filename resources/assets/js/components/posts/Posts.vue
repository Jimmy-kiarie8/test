<template>
  <div>
    <vue-topprogress ref="topProgress"></vue-topprogress>
    <transition>
      <v-content>
        <v-container fluid fill-height>
          <v-layout justify-center align-center>
            <v-expansion-panel focusable>
              <v-expansion-panel-content v-for="(item,key) in posts" :key="item.id">
                <div slot="header">{{ item.title }}
                  <div v-for="uitem in users" v-if="uitem.id === item.user_id">Posted by {{ uitem.name }} <br>
                    Posted on {{ item.created_at }}
                  </div>
                </div>
                <v-card>
                  <v-card-text class="grey lighten-3" v-html="item.body"></v-card-text>
                </v-card>
              </v-expansion-panel-content>
            </v-expansion-panel>
          </v-layout>
        </v-container>
      </v-content>     
  </transition>
</div>
</template>

<script>
import { vueTopprogress } from 'vue-top-progress'
  export default {
    components: {
      vueTopprogress
      // , mynew
    },
    data: () => ({
      posts: {},
      users: {},
    }),
    mounted() {
      this.$refs.topProgress.start()

       // Use setTimeout for demo
       setTimeout(() => {
         this.$refs.topProgress.done()
       }, 2000)


      axios.post('/getPosts')
      .then((response) => this.posts = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/getusers')
      .then((response) => this.users = response.data)
      .catch((error) => this.errors = error.response.data.errors)
    }
  }
</script>

<style>
  .fade-enter-active{
    transition: opacity 1s, transform 1s;
  }

  .fade-enter{
    opacity: 0;
    transform: translate(20px);
  }
</style>