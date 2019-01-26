<template>
  <div>
    <codemirror v-model="code" :options="cmOptions"></codemirror>
  </div>
</template>

<script>
import { codemirror } from 'vue-codemirror'
import 'codemirror/lib/codemirror.css'
import 'codemirror/mode/sql/sql.js'
import 'codemirror/theme/base16-dark.css'

export default {
  props: {
    value: {
      type: String,
      required: false,
      default: '',
    },
  },
  components: {
    codemirror,
  },
  data () {
    return {
      code: this.value,
      cmOptions: {
        tabSize: 2,
        mode: 'text/x-mysql',
        theme: 'base16-dark',
        lineNumbers: true,
        line: true,
      },
    }
  },
  updated () {
    this.$emit('input', this.code)
  },
}
</script>

<style lang="sass" scoped>
</style>
