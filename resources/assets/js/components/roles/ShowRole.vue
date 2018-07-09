<template>
<div id="id01" class="w3-modal" :style="{display: openRequest}">
    <div class="w3-modal-content w3-animate-zoom" style="width: 70%; margin: auto">
      <header class="w3-container w3-white"> 
        <span @click="close" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>{{list.name}}</h2>
      </header>
      <div class="w3-container">
        <table id="example1" class="table table-bordered table-striped table-hover">
          <thead>
          <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Date created</th>
            <th>role</th>
          </tr>
          </thead>
          <tbody>
            <tr>
              <td>{{ list.name }}</td>
              <td>{{ list.email }}</td>
              <td>{{ list.created_at }}</td>
              <td v-for="group in groups" v-if="group.id === list.id">{{ group.name }}</td>
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
        list: '',
        groups: {},
        // disp: 'block',
        roles: '',
    	}
    },
	methods: {
		close() {
			this.$emit('closeRequest')
		},
	},
   mounted() {
    axios.post('/getrolename')
    .then((response) => this.groups = this.temp = response.data)
      .catch((error) => this.errors = error.response.data.errors)

        axios.post('/getRoles')
      .then((response) => this.roles = response.data)
        .catch((error) => this.errors = error.response.data.errors)
  },
}
</script>
<style scoped>


</style>

