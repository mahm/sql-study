<template>
  <div>
    <CodeEditor v-model="body"></CodeEditor>
    <div v-if="errorMessage">
      <pre class="has-background-warning">
        {{ errorMessage }}
      </pre>
    </div>
    <div class="level has-margin-t-7">
      <div class="level-left">
      </div>
      <div class="level-right">
        <div class="level-item">
          <button class="button is-primary is-large" :disabled="disabled" @click="submit">
            Run
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import CodeEditor from 'application/components/CodeEditor'
import { create } from 'lib/api/executor'

export default {
  components: {
    CodeEditor,
  },
  data () {
    return {
      body: '',
      errorMessage: '',
      processing: false,
    }
  },
  methods: {
    submit () {
      this.errorMessage = ''
      this.processing = true
      create({ body: this.body })
        .then((response) => {
          if(response['error']) {
            this.errorMessage = response['error']
          } else {
            this.$emit('submit', response)
          }
        })
        .catch((error) => {
          this.errorMessage = error
        })
        .finally(() => {
          this.processing = false
        })
    },
  },
  computed: {
    disabled () {
      return (this.body === '' || this.processing)
    },
  },
}
</script>
