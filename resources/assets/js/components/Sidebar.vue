<template>
  <div class="container">
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
    <div class="row">
      <div class="col-sm-6 col-sm-offset-3">
        <div class="input-field">
          <input v-model="newPostTitle" id="title" type="text" class="form-control">
          <label for="title">Post Title</label>
        </div>
        <button @click="addPost(newPostTitle)" 
          :class="{disabled: (!newPostTitle)}"
          class="btn btn-block btn-primary">Submit</button>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        newPostTitle: "", 
        // newPostDesc: "",
        color: 'blue',
        text: '',
        top: 'top',
        snackbar: false,
        mode: '',
        timeout: 2000,
      }
    },
    created() {
      this.listenForChanges();
    },
    methods: {
      addPost(postName) {
        // check if entries are not empty
        if(!postName)
          return;

        // make API to save post
        axios.post('/api/mails', {
          title: postName
        }).then( response => {
          // if(response.data) { 
            this.newPostTitle = "";
            this.snackbar = true
            this.text = 'notification sent'
            console.log(response);
          // }
        })
        .catch((error) => {
            this.snackbar = true
            this.text = 'notification not sent'
          this.errors = error.response.data.errors
        })
      },
      listenForChanges() {
        Echo.channel('event')
          .listen('MailEventController', event => {
            if (! ('Notification' in window)) {
              alert('Web Notification is not supported');
              return;
            }

            Notification.requestPermission( permission => {
              // let notification = new Notification('New post alert!', {
              //   body: post.title, // content for the alert
              //   icon: "https://pusher.com/static_logos/320x320.png" // optional image url
              // });

              // // link to page on clicking the notification
              // notification.onclick = () => {
              //   window.open(window.location.href);
              // };
               alert('Web Notification is supported');
            });
          })
        }
      } 
    }
</script>