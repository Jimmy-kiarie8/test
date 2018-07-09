<template>
  <div>
  <div>
    <!-- <mynew></mynew> -->
    <v-content style="background: #f9f9f9">
      <v-container fluid fill-height>
        <v-layout justify-center align-center>
        	<v-container>
        	    <v-layout row wrap>
        	      <v-flex xs12 lg5 mb-3>
  			          <v-expansion-panel focusable>
        						<v-expansion-panel-content v-for="(item, key) in category" :key="item.id">
        							<div slot="header">{{ item.name }}</div>
        							<v-card v-for="(element, key) in allcat" :key="element.id">
        								<v-card-text v-if="item.id === element.cat_id" style="background: #f0f0f0;">
        									{{ element.title }}
        								</v-card-text>
        							</v-card>
        						</v-expansion-panel-content>
  			          </v-expansion-panel>
			      </v-flex>
			  </v-layout>
			</v-container>
        </v-layout>
      </v-container>
    </v-content>
</div>
  <vue-topprogress ref="topProgress"></vue-topprogress>
</div>
</template>

<script>
import { vueTopprogress } from 'vue-top-progress'
export default{
  components: {
    vueTopprogress
  },
	data() {
		return{
	      allcat: {},
	      category: {},
		}
	},
	
  mounted() {
    this.$refs.topProgress.start()

       // Use setTimeout for demo
       setTimeout(() => {
         this.$refs.topProgress.done()
       }, 2000)

    axios.post('/subcat')
    .then((response) => this.allcat = response.data)
      .catch((error) => this.errors = error.response.data.errors)

      axios.post('/getCategory')
    .then((response) => this.category = response.data)
      .catch((error) => this.errors = error.response.data.errors)
  }
}
</script>

<style scoped>
.fade-enter-active{
  transition: opacity 1s, transform 1s;
}
.fade-enter{
  opacity: 0;
  transform: translate(20px);
}
</style>
