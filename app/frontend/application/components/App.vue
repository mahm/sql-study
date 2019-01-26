<template>
  <div>
    <SqlForm v-on:submit="response = $event"></SqlForm>
    <ResultViewer :response="response"></ResultViewer>
  </div>
</template>

<script>
import SqlForm from 'application/components/SqlForm'
import ResultViewer from 'application/components/ResultViewer'

export default {
  components: {
    SqlForm,
    ResultViewer,
  },
  data () {
    return {
      response: {},
    }
  },
}
</script>
